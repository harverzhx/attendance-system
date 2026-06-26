<?php

namespace App\models;

class Attendance extends Database
{
    public static function scan(array $data): ?array
    {
        $db = self::getDb();

        $student = !empty($data['barcode']) ? Student::findByBarcode($data['barcode']) : null;
        if (!$student) return null;

        $today = date('Y-m-d');
        $now = date('H:i:s');
        $settings = SystemSettings::getAll();
        $schoolStart = $settings['school_start_time'] ?? '07:30:00';
        $gracePeriod = intval($settings['grace_period_minutes'] ?? 10);

        $startTimestamp = strtotime($schoolStart);
        $cutoffTimestamp = $startTimestamp + ($gracePeriod * 60);
        $currentTimestamp = strtotime($now);

        // Cooldown: prevent duplicate scan within 3 seconds
        $lastScan = ScanLog::getLatestScan($student['student_id'], $today);
        if ($lastScan) {
            $lastTime = strtotime($lastScan['scan_time']);
            if (($currentTimestamp - $lastTime) < 3) {
                $type = $lastScan['scan_type'];
                return [
                    'student' => $student['first_name'] . ' ' . $student['last_name'],
                    'student_id' => $student['student_id'],
                    'section' => $student['grade_level'] . ' - ' . $student['section_name'],
                    'photo' => $student['photo'] ?? null,
                    'scan_type' => $type,
                    'message' => 'Please wait before scanning again',
                    'type' => 'cooldown',
                    'last_scan' => date('h:i A', $lastTime),
                ];
            }
        }

        // Determine scan type: if latest today is EXIT or no scan → ENTRY, else → EXIT
        $scanType = (!$lastScan || $lastScan['scan_type'] === 'EXIT') ? 'ENTRY' : 'EXIT';
        $exitType = null;

        if ($scanType === 'EXIT') {
            $exitType = $data['exit_type'] ?? null;
            if (!$exitType) {
                return [
                    'requires_exit_type' => true,
                    'message' => 'Exit type is required',
                    'student' => $student['first_name'] . ' ' . $student['last_name'],
                    'student_id' => $student['student_id'],
                    'section' => $student['grade_level'] . ' - ' . $student['section_name'],
                    'photo' => $student['photo'] ?? null,
                    'barcode' => $data['barcode'],
                ];
            }
        }

        // Create scan_log entry
        $scanId = ScanLog::create($student['student_id'], $scanType, $exitType);

        $formattedTime = date('h:i A', strtotime($now));
        $result = [
            'scan_id' => $scanId,
            'student' => $student['first_name'] . ' ' . $student['last_name'],
            'student_id' => $student['student_id'],
            'section' => $student['grade_level'] . ' - ' . $student['section_name'],
            'photo' => $student['photo'] ?? null,
            'scan_type' => $scanType,
            'exit_type' => $exitType,
            'time' => $formattedTime,
            'type' => $scanType === 'ENTRY' ? 'entry' : 'exit',
        ];

        // Attendance logic (backward compatible)
        if ($scanType === 'ENTRY') {
            $stmt = $db->prepare("SELECT * FROM attendance WHERE student_id = ? AND attendance_date = ?");
            $stmt->execute([$student['student_id'], $today]);
            $existing = $stmt->fetch();

            if (!$existing) {
                $status = ($currentTimestamp <= $cutoffTimestamp) ? 'Present' : 'Late';
                $lateMinutes = ($status === 'Late') ? intval(($currentTimestamp - $startTimestamp) / 60) : 0;
                $remarks = ($status === 'Late') ? "Late by $lateMinutes minutes" : 'On time';

                $stmt = $db->prepare("INSERT INTO attendance (student_id, attendance_date, time_in, status, remarks) VALUES (?, ?, ?, ?, ?) RETURNING attendance_id");
                $stmt->execute([$student['student_id'], $today, $now, $status, $remarks]);
                $result['attendance_id'] = $stmt->fetchColumn();
                $result['status'] = $status;
                $result['late_minutes'] = $lateMinutes ?? 0;
                $result['first_entry'] = true;

                // Send email only on first entry
                if (!empty($settings['email_notification_enabled'])) {
                    self::sendScanNotification($student, 'Entry', $result);
                    if ($status === 'Late') {
                        self::sendScanNotification($student, 'Late', $result);
                    }
                }
            } else {
                $result['status'] = $existing['status'];
                $result['attendance_id'] = $existing['attendance_id'];
                $result['first_entry'] = false;
                // No email for subsequent ENTRY scans
            }
        } else {
            // EXIT scan
            $result['status'] = '--';

            // Update attendance time_out only if null (first EXIT only)
            $stmt = $db->prepare("SELECT * FROM attendance WHERE student_id = ? AND attendance_date = ?");
            $stmt->execute([$student['student_id'], $today]);
            $att = $stmt->fetch();
            if ($att) {
                $firstExit = empty($att['time_out']);
                if ($firstExit) {
                    $stmt = $db->prepare("UPDATE attendance SET time_out = ?, remarks = ? WHERE attendance_id = ?");
                    $remark = $exitType ? "Exit: $exitType" : 'Time-out recorded';
                    $stmt->execute([$now, $remark, $att['attendance_id']]);
                }
                $result['attendance_id'] = $att['attendance_id'];
                $result['status'] = $att['status'];

                // Send email only on first EXIT
                if ($firstExit && !empty($settings['email_notification_enabled'])) {
                    if ($exitType === 'Dismissal') {
                        self::sendScanNotification($student, 'Dismissal', $result);
                    } else {
                        self::sendScanNotification($student, 'Exit', $result);
                    }
                }
            }
        }

        return $result;
    }

    private static function sendScanNotification(array $student, string $type, array $scan): void
    {
        if (empty($student['parent_email'])) return;

        $db = self::getDb();
        $settings = SystemSettings::getAll();
        $schoolName = $settings['school_name'] ?? 'School Name';
        $schoolAddress = $settings['school_address'] ?? '';

        $time = $scan['time'] ?? date('h:i A');
        $date = date('F j, Y');
        $studentName = $student['first_name'] . ' ' . $student['last_name'];
        $studentId = $student['student_number'] ?? $student['lrn'] ?? '--';
        $section = ($student['grade_level'] ?? '') . ' - ' . ($student['section_name'] ?? '');
        $parentName = $student['parent_name'] ?? 'Parent/Guardian';
        $scanType = $scan['scan_type'] ?? $type;
        $exitType = $scan['exit_type'] ?? null;
        $status = $scan['status'] ?? '';

        $subject = "$type Notification - $studentName";

        $statusRow = $status ? "<tr><td style='color:#64748b;border-bottom:1px solid #e2e8f0;'><strong>Status</strong></td><td style='color:#1e293b;border-bottom:1px solid #e2e8f0;font-weight:600;'>$status</td></tr>" : '';
        $exitRow = $exitType ? "<tr><td style='color:#64748b;border-bottom:1px solid #e2e8f0;'><strong>Exit Type</strong></td><td style='color:#1e293b;border-bottom:1px solid #e2e8f0;'>$exitType</td></tr>" : '';

        $message = "
        <!DOCTYPE html>
        <html>
        <head><meta charset='UTF-8'></head>
        <body style='margin:0;padding:0;background:#f4f4f4;font-family:Arial,sans-serif;'>
            <table width='100%' cellpadding='0' cellspacing='0' style='background:#f4f4f4;padding:20px;'>
                <tr><td align='center'>
                    <table width='600' cellpadding='0' cellspacing='0' style='background:#ffffff;border-radius:8px;overflow:hidden;box-shadow:0 2px 8px rgba(0,0,0,0.1);'>
                        <tr>
                            <td style='background:#1e293b;padding:25px 20px;text-align:center;'>
                                <table cellpadding='0' cellspacing='0' style='margin:0 auto;'>
                                    <tr>
                                        <td style='vertical-align:middle;padding-right:12px;'>
                                            <img src='cid:logo_img' alt='$schoolName' width='40' height='40' style='border-radius:8px;'>
                                        </td>
                                        <td style='vertical-align:middle;text-align:left;'>
                                            <h1 style='color:#ffffff;margin:0;font-size:20px;'>$schoolName</h1>
                                            <p style='color:#93c5fd;margin:2px 0 0;font-size:12px;'>Gate Attendance Notification</p>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style='padding:30px 30px 20px;'>
                                <p style='color:#334155;font-size:14px;line-height:1.6;margin:0 0 5px;'>Dear <strong>$parentName</strong>,</p>
                                <p style='color:#334155;font-size:14px;line-height:1.6;margin:0 0 15px;'>This is to notify you regarding the campus access of your child:</p>
                                <table width='100%' cellpadding='8' cellspacing='0' style='background:#f8fafc;border-radius:6px;margin:15px 0;font-size:14px;border:1px solid #e2e8f0;'>
                                    <tr><td style='color:#64748b;width:140px;border-bottom:1px solid #e2e8f0;'><strong>Student Name</strong></td><td style='color:#1e293b;border-bottom:1px solid #e2e8f0;'>$studentName</td></tr>
                                    <tr><td style='color:#64748b;border-bottom:1px solid #e2e8f0;'><strong>Student ID</strong></td><td style='color:#1e293b;border-bottom:1px solid #e2e8f0;'>$studentId</td></tr>
                                    <tr><td style='color:#64748b;border-bottom:1px solid #e2e8f0;'><strong>Grade & Section</strong></td><td style='color:#1e293b;border-bottom:1px solid #e2e8f0;'>$section</td></tr>
                                    <tr><td style='color:#64748b;border-bottom:1px solid #e2e8f0;'><strong>Date</strong></td><td style='color:#1e293b;border-bottom:1px solid #e2e8f0;'>$date</td></tr>
                                    <tr><td style='color:#64748b;border-bottom:1px solid #e2e8f0;'><strong>Time</strong></td><td style='color:#1e293b;border-bottom:1px solid #e2e8f0;'>$time</td></tr>
                                    <tr><td style='color:#64748b;border-bottom:1px solid #e2e8f0;'><strong>Scan Type</strong></td><td style='color:#1e293b;border-bottom:1px solid #e2e8f0;'>$scanType</td></tr>
                                    $exitRow
                                    $statusRow
                                </table>
                                <p style='color:#334155;font-size:14px;line-height:1.6;margin:15px 0 0;'>Thank you for your continued support.</p>
                            </td>
                        </tr>
                        <tr>
                            <td style='background:#f8fafc;padding:20px;text-align:center;border-top:2px solid #e2e8f0;'>
                                <p style='color:#64748b;font-size:13px;font-weight:600;margin:0;'>$schoolName</p>
                                <p style='color:#94a3b8;font-size:12px;margin:3px 0;'>$schoolAddress</p>
                                <p style='color:#94a3b8;font-size:11px;margin:8px 0 0;padding-top:8px;border-top:1px solid #e2e8f0;'>This is an automated message from the School Gate Attendance System.</p>
                            </td>
                        </tr>
                    </table>
                </td></tr>
            </table>
        </body>
        </html>";

        $stmt = $db->prepare("INSERT INTO email_logs (student_id, parent_email, notification_type, subject, message, send_status) VALUES (?, ?, ?, ?, ?, 'Pending') RETURNING email_log_id");
        $stmt->execute([$student['student_id'], $student['parent_email'], $type, $subject, $message]);
        $logId = $stmt->fetchColumn();

        try {
            EmailLog::send($logId);
        } catch (\Exception $e) {
            $stmt = $db->prepare("UPDATE email_logs SET send_status = 'Failed' WHERE email_log_id = ?");
            $stmt->execute([$logId]);
        }
    }

    public static function getAll(array $filters = []): array
    {
        $db = self::getDb();
        $sql = "
            SELECT a.*, s.first_name || ' ' || s.last_name as student_name, s.student_number,
                   s.photo as student_photo, s.section_id, sec.grade_level, sec.section_name
            FROM attendance a
            JOIN students s ON a.student_id = s.student_id
            LEFT JOIN sections sec ON s.section_id = sec.section_id
            WHERE 1=1
        ";
        $params = [];

        if (!empty($filters['date'])) {
            $sql .= " AND a.attendance_date = ?";
            $params[] = $filters['date'];
        }
        if (!empty($filters['date_from'])) {
            $sql .= " AND a.attendance_date >= ?";
            $params[] = $filters['date_from'];
        }
        if (!empty($filters['date_to'])) {
            $sql .= " AND a.attendance_date <= ?";
            $params[] = $filters['date_to'];
        }
        if (!empty($filters['student_id'])) {
            $sql .= " AND a.student_id = ?";
            $params[] = $filters['student_id'];
        }
        if (!empty($filters['section_id'])) {
            $sql .= " AND s.section_id = ?";
            $params[] = $filters['section_id'];
        }
        if (!empty($filters['status'])) {
            $sql .= " AND a.status = ?";
            $params[] = $filters['status'];
        }
        if (!empty($filters['search'])) {
            $sql .= " AND (s.first_name ILIKE ? OR s.last_name ILIKE ? OR s.student_number ILIKE ? OR a.remarks ILIKE ?)";
            $search = "%{$filters['search']}%";
            $params = array_merge($params, [$search, $search, $search, $search]);
        }

        $sql .= " ORDER BY a.created_at DESC LIMIT 200";
        $stmt = $db->prepare($sql);
        $stmt->execute($params);
        return $stmt->fetchAll();
    }

    public static function getById(int $id): ?array
    {
        $db = self::getDb();
        $stmt = $db->prepare("
            SELECT a.*, s.first_name || ' ' || s.last_name as student_name, s.student_number
            FROM attendance a
            JOIN students s ON a.student_id = s.student_id
            WHERE a.attendance_id = ?
        ");
        $stmt->execute([$id]);
        return $stmt->fetch() ?: null;
    }

    public static function update(int $id, array $data): bool
    {
        $db = self::getDb();
        $fields = [];
        $params = [];

        foreach (['time_in', 'time_out', 'status', 'remarks'] as $field) {
            if (isset($data[$field])) {
                $fields[] = "$field = ?";
                $params[] = $data[$field];
            }
        }

        if (empty($fields)) return false;

        $params[] = $id;
        $sql = "UPDATE attendance SET " . implode(', ', $fields) . " WHERE attendance_id = ?";
        $stmt = $db->prepare($sql);
        $ok = $stmt->execute($params);

        // Auto-send attendance notification when status is set
        if ($ok && isset($data['status']) && in_array($data['status'], ['Present', 'Late', 'Absent'])) {
            $settings = SystemSettings::getAll();
            if (!empty($settings['email_notification_enabled'])) {
                self::sendAttendanceNotification($id);
            }
        }

        return $ok;
    }

    public static function delete(int $id): bool
    {
        $db = self::getDb();
        $stmt = $db->prepare("DELETE FROM attendance WHERE attendance_id = ?");
        return $stmt->execute([$id]);
    }

    // ─── ADVISER ───

    public static function getAdviserDashboard(int $adviserId): array
    {
        $db = self::getDb();
        $today = date('Y-m-d');

        $stmt = $db->prepare("
            SELECT s.section_id, s.grade_level, s.section_name,
                   (SELECT COUNT(*) FROM students WHERE section_id = s.section_id AND status = 'Active') as total_students,
                   (SELECT COUNT(*) FROM attendance a JOIN students st ON a.student_id = st.student_id WHERE st.section_id = s.section_id AND a.attendance_date = ? AND a.status = 'Present') as present_count,
                   (SELECT COUNT(*) FROM attendance a JOIN students st ON a.student_id = st.student_id WHERE st.section_id = s.section_id AND a.attendance_date = ? AND a.status = 'Late') as late_count,
                   (SELECT COUNT(*) FROM attendance a JOIN students st ON a.student_id = st.student_id WHERE st.section_id = s.section_id AND a.attendance_date = ? AND a.status = 'Absent') as absent_count
            FROM sections s
            WHERE s.adviser_id = ? AND s.status = 'Active'
        ");
        $stmt->execute([$today, $today, $today, $adviserId]);
        return $stmt->fetchAll();
    }

    public static function getAdviserAttendance(int $adviserId, string $date, ?int $sectionId = null): array
    {
        $db = self::getDb();
        $sql = "
            SELECT a.*, s.first_name || ' ' || s.last_name as student_name, s.student_number, s.photo as student_photo, s.section_id,
                   sec.grade_level, sec.section_name
            FROM attendance a
            JOIN students s ON a.student_id = s.student_id
            JOIN sections sec ON s.section_id = sec.section_id
            WHERE sec.adviser_id = ? AND a.attendance_date = ?
        ";
        $params = [$adviserId, $date];

        if ($sectionId) {
            $sql .= " AND s.section_id = ?";
            $params[] = $sectionId;
        }

        $sql .= " ORDER BY s.last_name, s.first_name";
        $stmt = $db->prepare($sql);
        $stmt->execute($params);
        return $stmt->fetchAll();
    }

    public static function getAdviserReport(int $adviserId, ?int $sectionId, string $dateFrom, string $dateTo): array
    {
        $db = self::getDb();
        $sql = "
            SELECT s.student_id, s.first_name || ' ' || s.last_name as student_name, s.student_number,
                   sec.section_name, sec.grade_level,
                   COUNT(*) FILTER (WHERE a.status = 'Present') as present_days,
                   COUNT(*) FILTER (WHERE a.status = 'Late') as late_days,
                   COUNT(*) FILTER (WHERE a.status = 'Absent') as absent_days
            FROM students s
            JOIN sections sec ON s.section_id = sec.section_id
            LEFT JOIN attendance a ON s.student_id = a.student_id AND a.attendance_date BETWEEN ? AND ?
            WHERE sec.adviser_id = ?
        ";
        $params = [$dateFrom, $dateTo, $adviserId];

        if ($sectionId) {
            $sql .= " AND s.section_id = ?";
            $params[] = $sectionId;
        }

        $sql .= " GROUP BY s.student_id, s.first_name, s.last_name, s.student_number, sec.section_name, sec.grade_level
                  ORDER BY s.last_name, s.first_name";
        $stmt = $db->prepare($sql);
        $stmt->execute($params);
        return $stmt->fetchAll();
    }

    // ─── REPORTS ───

    public static function getDailyReport(string $date): array
    {
        $db = self::getDb();
        $stmt = $db->prepare("
            SELECT s.student_number, s.first_name || ' ' || s.last_name as student_name,
                   sec.grade_level, sec.section_name, a.time_in, a.time_out, a.status
            FROM students s
            LEFT JOIN sections sec ON s.section_id = sec.section_id
            LEFT JOIN attendance a ON s.student_id = a.student_id AND a.attendance_date = ?
            WHERE s.status = 'Active'
            ORDER BY s.last_name, s.first_name
        ");
        $stmt->execute([$date]);
        return $stmt->fetchAll();
    }

    public static function getMonthlyReport(string $year, string $month): array
    {
        $db = self::getDb();
        $stmt = $db->prepare("
            SELECT s.student_number, s.first_name || ' ' || s.last_name as student_name,
                   sec.grade_level, sec.section_name,
                   COUNT(*) FILTER (WHERE a.status = 'Present') as present_count,
                   COUNT(*) FILTER (WHERE a.status = 'Late') as late_count,
                   COUNT(*) FILTER (WHERE a.status = 'Absent') as absent_count
            FROM students s
            LEFT JOIN sections sec ON s.section_id = sec.section_id
            LEFT JOIN attendance a ON s.student_id = a.student_id 
                AND EXTRACT(YEAR FROM a.attendance_date) = ? 
                AND EXTRACT(MONTH FROM a.attendance_date) = ?
            WHERE s.status = 'Active'
            GROUP BY s.student_id, s.student_number, s.first_name, s.last_name, sec.grade_level, sec.section_name
            ORDER BY s.last_name, s.first_name
        ");
        $stmt->execute([$year, $month]);
        return $stmt->fetchAll();
    }

    public static function getStudentReport(int $studentId, string $dateFrom, string $dateTo): array
    {
        $db = self::getDb();
        $stmt = $db->prepare("
            SELECT * FROM attendance 
            WHERE student_id = ? AND attendance_date BETWEEN ? AND ?
            ORDER BY attendance_date DESC
        ");
        $stmt->execute([$studentId, $dateFrom, $dateTo]);
        return $stmt->fetchAll();
    }

    public static function getSectionReport(int $sectionId, string $dateFrom, string $dateTo): array
    {
        $db = self::getDb();
        $stmt = $db->prepare("
            SELECT s.student_number, s.first_name || ' ' || s.last_name as student_name,
                   COUNT(*) FILTER (WHERE a.status = 'Present') as present_count,
                   COUNT(*) FILTER (WHERE a.status = 'Late') as late_count,
                   COUNT(*) FILTER (WHERE a.status = 'Absent') as absent_count
            FROM students s
            LEFT JOIN attendance a ON s.student_id = a.student_id AND a.attendance_date BETWEEN ? AND ?
            WHERE s.section_id = ? AND s.status = 'Active'
            GROUP BY s.student_id, s.student_number, s.first_name, s.last_name
            ORDER BY s.last_name, s.first_name
        ");
        $stmt->execute([$dateFrom, $dateTo, $sectionId]);
        return $stmt->fetchAll();
    }

    public static function getLateReport(string $dateFrom, string $dateTo): array
    {
        $db = self::getDb();
        $stmt = $db->prepare("
            SELECT s.student_number, s.first_name || ' ' || s.last_name as student_name,
                   sec.grade_level, sec.section_name,
                   COUNT(*) as late_count,
                   STRING_AGG(to_char(a.attendance_date, 'MM/DD'), ', ') as late_dates
            FROM attendance a
            JOIN students s ON a.student_id = s.student_id
            LEFT JOIN sections sec ON s.section_id = sec.section_id
            WHERE a.status = 'Late' AND a.attendance_date BETWEEN ? AND ?
            GROUP BY s.student_id, s.student_number, s.first_name, s.last_name, sec.grade_level, sec.section_name
            ORDER BY late_count DESC
        ");
        $stmt->execute([$dateFrom, $dateTo]);
        return $stmt->fetchAll();
    }

    public static function getAbsentReport(string $dateFrom, string $dateTo): array
    {
        $db = self::getDb();
        $stmt = $db->prepare("
            SELECT s.student_number, s.first_name || ' ' || s.last_name as student_name,
                   sec.grade_level, sec.section_name,
                   (SELECT COUNT(*) FROM generate_series(?::date, ?::date, '1 day') d 
                    WHERE EXTRACT(DOW FROM d) BETWEEN 1 AND 5) - COUNT(a.attendance_id) as absent_count,
                   STRING_AGG(to_char(a.attendance_date, 'MM/DD'), ', ') FILTER (WHERE a.status = 'Absent') as absent_dates
            FROM students s
            LEFT JOIN sections sec ON s.section_id = sec.section_id
            LEFT JOIN attendance a ON s.student_id = a.student_id AND a.attendance_date BETWEEN ? AND ?
            WHERE s.status = 'Active'
            GROUP BY s.student_id, s.student_number, s.first_name, s.last_name, sec.grade_level, sec.section_name
            HAVING (SELECT COUNT(*) FROM generate_series(?::date, ?::date, '1 day') d 
                    WHERE EXTRACT(DOW FROM d) BETWEEN 1 AND 5) - COUNT(a.attendance_id) > 0
            ORDER BY absent_count DESC
        ");
        $stmt->execute([$dateFrom, $dateTo, $dateFrom, $dateTo, $dateFrom, $dateTo]);
        return $stmt->fetchAll();
    }

    // ─── EXPORTS (Stub — PDF/Excel generation handled in frontend) ───

    public static function exportPDF(string $type, string $date): void
    {
        header('Content-Type: application/pdf');
        header('Content-Disposition: attachment; filename="attendance_report_' . $type . '_' . $date . '.pdf"');
        echo json_encode(['message' => 'PDF export endpoint', 'type' => $type, 'date' => $date]);
    }

    public static function exportExcel(string $type, string $date): void
    {
        header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
        header('Content-Disposition: attachment; filename="attendance_report_' . $type . '_' . $date . '.xlsx"');
        echo json_encode(['message' => 'Excel export endpoint', 'type' => $type, 'date' => $date]);
    }

    // ─── DASHBOARDS ───

    public static function getAdminDashboard(): array
    {
        $db = self::getDb();
        $today = date('Y-m-d');

        $stmt = $db->query("SELECT COUNT(*) FROM students WHERE status = 'Active'");
        $totalStudents = $stmt->fetchColumn();

        $stmt = $db->query("SELECT COUNT(*) FROM users u JOIN roles r ON u.role_id = r.role_id WHERE u.status = 'Active' AND r.role_name = 'Teacher'");
        $totalTeachers = $stmt->fetchColumn();

        $stmt = $db->query("SELECT COUNT(*) FROM users u JOIN roles r ON u.role_id = r.role_id WHERE u.status = 'Active' AND r.role_name = 'Staff'");
        $totalStaff = $stmt->fetchColumn();

        $stmt = $db->query("SELECT COUNT(*) FROM parents WHERE status = 'Active'");
        $totalParents = $stmt->fetchColumn();

        $stmt = $db->prepare("SELECT COUNT(*) FROM attendance WHERE attendance_date = ? AND status = 'Present'");
        $stmt->execute([$today]);
        $presentToday = $stmt->fetchColumn();

        $stmt = $db->prepare("SELECT COUNT(*) FROM attendance WHERE attendance_date = ? AND status = 'Late'");
        $stmt->execute([$today]);
        $lateToday = $stmt->fetchColumn();

        $stmt = $db->prepare("SELECT COUNT(*) FROM attendance WHERE attendance_date = ? AND status = 'Absent'");
        $stmt->execute([$today]);
        $absentToday = $stmt->fetchColumn();

        return [
            'total_students' => intval($totalStudents),
            'total_teachers' => intval($totalTeachers),
            'total_staff' => intval($totalStaff),
            'total_parents' => intval($totalParents),
            'present_today' => intval($presentToday),
            'late_today' => intval($lateToday),
            'absent_today' => intval($absentToday),
        ];
    }

    public static function getComprehensiveDashboard(): array
    {
        $db = self::getDb();
        $today = date('Y-m-d');

        // Base stats
        $stmt = $db->query("SELECT COUNT(*) FROM students WHERE status = 'Active'");
        $totalStudents = $stmt->fetchColumn();
        $stmt = $db->query("SELECT COUNT(*) FROM users u JOIN roles r ON u.role_id = r.role_id WHERE u.status = 'Active' AND r.role_name = 'Teacher'");
        $totalTeachers = $stmt->fetchColumn();
        $stmt = $db->query("SELECT COUNT(*) FROM users u JOIN roles r ON u.role_id = r.role_id WHERE u.status = 'Active' AND r.role_name = 'Staff'");
        $totalStaff = $stmt->fetchColumn();
        $stmt = $db->query("SELECT COUNT(*) FROM parents WHERE status = 'Active'");
        $totalParents = $stmt->fetchColumn();
        $stmt = $db->prepare("SELECT COUNT(*) FROM attendance WHERE attendance_date = ? AND status = 'Present'");
        $stmt->execute([$today]);
        $presentToday = $stmt->fetchColumn();
        $stmt = $db->prepare("SELECT COUNT(*) FROM attendance WHERE attendance_date = ? AND status = 'Late'");
        $stmt->execute([$today]);
        $lateToday = $stmt->fetchColumn();
        $stmt = $db->prepare("SELECT COUNT(*) FROM attendance WHERE attendance_date = ? AND status = 'Absent'");
        $stmt->execute([$today]);
        $absentToday = $stmt->fetchColumn();

        // Gate summary
        $gateSummary = ScanLog::getTodaySummary();

        // Recent scans (last 20)
        $recentScans = $db->prepare("
            SELECT sl.scan_id, s.first_name || ' ' || s.last_name as student_name,
                   s.student_id, s.student_number, s.photo, sec.grade_level, sec.section_name,
                   sl.scan_type, sl.exit_type, sl.scan_time
            FROM scan_logs sl
            JOIN students s ON sl.student_id = s.student_id
            LEFT JOIN sections sec ON s.section_id = sec.section_id
            ORDER BY sl.scan_time DESC LIMIT 20
        ");
        $recentScans->execute();
        $recentScansList = $recentScans->fetchAll();

        // Alerts
        $alerts = [];
        $medical = $db->prepare("
            SELECT sl.scan_id, s.first_name || ' ' || s.last_name as student_name,
                   s.student_id, s.student_number, s.photo, sec.section_name as section, sl.scan_time
            FROM scan_logs sl
            JOIN students s ON sl.student_id = s.student_id
            LEFT JOIN sections sec ON s.section_id = sec.section_id
            WHERE DATE(sl.scan_time) = ? AND sl.exit_type = 'Medical Emergency'
            ORDER BY sl.scan_time DESC LIMIT 10
        ");
        $medical->execute([$today]);
        $alerts['medical_emergency'] = $medical->fetchAll();

        $notEntered = $db->prepare("
            SELECT s.student_id, s.first_name || ' ' || s.last_name as student_name,
                   s.student_number, s.photo, sec.section_name as section
            FROM students s
            LEFT JOIN sections sec ON s.section_id = sec.section_id
            WHERE s.status = 'Active' AND s.student_id NOT IN (
                SELECT sl.student_id FROM scan_logs sl WHERE DATE(sl.scan_time) = ?
            )
            ORDER BY s.last_name LIMIT 20
        ");
        $notEntered->execute([$today]);
        $alerts['not_entered'] = $notEntered->fetchAll();

        $lateStudents = $db->prepare("
            SELECT a.attendance_id, s.first_name || ' ' || s.last_name as student_name,
                   s.student_id, s.student_number, s.photo, sec.section_name as section,
                   a.time_in, a.remarks
            FROM attendance a
            JOIN students s ON a.student_id = s.student_id
            LEFT JOIN sections sec ON s.section_id = sec.section_id
            WHERE a.attendance_date = ? AND a.status = 'Late'
            ORDER BY a.time_in DESC LIMIT 10
        ");
        $lateStudents->execute([$today]);
        $alerts['late_students'] = $lateStudents->fetchAll();

        // 7-day trend
        $trend = $db->prepare("
            SELECT attendance_date,
                   SUM(CASE WHEN status = 'Present' THEN 1 ELSE 0 END) as present,
                   SUM(CASE WHEN status = 'Late' THEN 1 ELSE 0 END) as late,
                   SUM(CASE WHEN status = 'Absent' THEN 1 ELSE 0 END) as absent
            FROM attendance
            WHERE attendance_date >= ? AND attendance_date <= ?
            GROUP BY attendance_date ORDER BY attendance_date
        ");
        $trend->execute([date('Y-m-d', strtotime('-6 days')), $today]);
        $trendData = $trend->fetchAll();
        // Fill missing days
        $fullTrend = [];
        for ($i = 6; $i >= 0; $i--) {
            $d = date('Y-m-d', strtotime("-$i days"));
            $found = false;
            foreach ($trendData as $row) {
                if ($row['attendance_date'] === $d) {
                    $fullTrend[] = $row;
                    $found = true; break;
                }
            }
            if (!$found) $fullTrend[] = ['attendance_date' => $d, 'present' => 0, 'late' => 0, 'absent' => 0];
        }

        // Section rankings
        $sectionRank = $db->prepare("
            SELECT sec.section_id, sec.grade_level, sec.section_name,
                   COUNT(DISTINCT s.student_id) as total_students,
                   COUNT(DISTINCT a.attendance_id) FILTER (WHERE a.attendance_date = ? AND a.status = 'Present') as present_count
            FROM sections sec
            JOIN students s ON s.section_id = sec.section_id AND s.status = 'Active'
            LEFT JOIN attendance a ON a.student_id = s.student_id
            GROUP BY sec.section_id, sec.grade_level, sec.section_name
            ORDER BY present_count DESC, sec.grade_level, sec.section_name
        ");
        $sectionRank->execute([$today]);
        $sectionRanking = $sectionRank->fetchAll();

        // Exit type summary
        $exitTypeSummary = $db->prepare("
            SELECT exit_type, COUNT(*) as count
            FROM scan_logs WHERE DATE(scan_time) = ? AND scan_type = 'EXIT' AND exit_type IS NOT NULL
            GROUP BY exit_type ORDER BY count DESC
        ");
        $exitTypeSummary->execute([$today]);

        // Email notification stats
        $emailToday = $db->prepare("
            SELECT send_status, COUNT(*) as count
            FROM email_logs WHERE DATE(created_at) = ?
            GROUP BY send_status
        ");
        $emailToday->execute([$today]);
        $emailStats = ['Sent' => 0, 'Failed' => 0, 'Pending' => 0];
        foreach ($emailToday->fetchAll() as $row) {
            $emailStats[$row['send_status']] = (int)$row['count'];
        }

        // Failed email alerts (today)
        $failedEmails = $db->prepare("
            SELECT el.email_log_id, s.first_name || ' ' || s.last_name as student_name,
                   s.student_id, s.student_number, el.parent_email, el.notification_type, el.subject, el.sent_at
            FROM email_logs el
            JOIN students s ON el.student_id = s.student_id
            WHERE DATE(el.created_at) = ? AND el.send_status = 'Failed'
            ORDER BY el.sent_at DESC LIMIT 20
        ");
        $failedEmails->execute([$today]);

        $insideStudents = ScanLog::getStudentsInside($today);
        $outsideStudents = ScanLog::getStudentsOutside($today);

        // Active pull-outs today (handle missing table gracefully)
        try {
            $pullOuts = $db->prepare("
                SELECT po.pull_out_id, po.student_id, s.first_name || ' ' || s.last_name as student_name,
                       s.photo as student_photo, sec.section_name, po.picked_up_by, po.purpose,
                       po.time_pulled
                FROM pull_outs po
                JOIN students s ON po.student_id = s.student_id
                LEFT JOIN sections sec ON s.section_id = sec.section_id
                WHERE po.status = 'Out'
                ORDER BY po.time_pulled DESC LIMIT 10
            ");
            $pullOuts->execute([]);
            $pullOutsData = $pullOuts->fetchAll();
        } catch (\Throwable $e) {
            $pullOutsData = [];
        }

        // Pending excuses today (handle missing table gracefully)
        try {
            $pendingExcuses = $db->prepare("
                SELECT e.excuse_id, e.student_id, s.first_name || ' ' || s.last_name as student_name,
                       s.photo as student_photo, sec.section_name, e.type, e.reason, e.excuse_date, e.created_at
                FROM excuses e
                JOIN students s ON e.student_id = s.student_id
                LEFT JOIN sections sec ON s.section_id = sec.section_id
                WHERE e.status = 'Pending'
                ORDER BY e.created_at DESC LIMIT 10
            ");
            $pendingExcuses->execute([]);
            $pendingExcusesData = $pendingExcuses->fetchAll();
        } catch (\Throwable $e) {
            $pendingExcusesData = [];
        }

        return [
            'total_students' => intval($totalStudents),
            'total_teachers' => intval($totalTeachers),
            'total_staff' => intval($totalStaff),
            'total_parents' => intval($totalParents),
            'present_today' => intval($presentToday),
            'late_today' => intval($lateToday),
            'absent_today' => intval($absentToday),
            'gate' => [
                'students_inside' => $gateSummary['students_inside'],
                'students_outside' => $gateSummary['students_outside'],
                'students_not_yet_entered' => $gateSummary['students_not_yet_entered'] ?? 0,
                'today_entries' => $gateSummary['today_entries'],
                'today_exits' => $gateSummary['today_exits'],
                'inside_list' => $insideStudents,
                'outside_list' => $outsideStudents,
            ],
            'recent_scans' => $recentScansList,
            'alerts' => $alerts,
            'trend_7day' => $fullTrend,
            'section_ranking' => $sectionRanking,
            'exit_type_summary' => $exitTypeSummary->fetchAll(),
            'email_stats' => $emailStats,
            'failed_emails' => $failedEmails->fetchAll(),
            'active_pull_outs' => $pullOutsData,
            'pending_excuses' => $pendingExcusesData,
        ];
    }

    public static function getTeacherDashboard(int $userId): array
    {
        $db = self::getDb();
        $today = date('Y-m-d');

        // Get teacher's sections
        $sections = $db->prepare("
            SELECT sec.section_id, sec.grade_level, sec.section_name,
                   (SELECT COUNT(*) FROM students s WHERE s.section_id = sec.section_id AND s.status = 'Active') as student_count,
                   (SELECT STRING_AGG(sub.subject_name, ', ') FROM teacher_subjects ts2 JOIN subjects sub ON ts2.subject_id = sub.subject_id WHERE ts2.teacher_id = ? AND ts2.section_id = sec.section_id) as subjects
            FROM sections sec
            JOIN teacher_sections ts ON sec.section_id = ts.section_id
            WHERE ts.teacher_id = ?
            ORDER BY sec.grade_level, sec.section_name
        ");
        $sections->execute([$userId, $userId]);

        // Get students in teacher's sections who are inside campus
        $insideStudents = $db->prepare("
            SELECT DISTINCT s.student_id, s.first_name || ' ' || s.last_name as student_name,
                   s.student_number, s.photo, sec.grade_level, sec.section_name, sl.scan_time as last_entry
            FROM students s
            JOIN sections sec ON s.section_id = sec.section_id
            JOIN teacher_sections ts ON sec.section_id = ts.section_id AND ts.teacher_id = ?
            JOIN scan_logs sl ON s.student_id = sl.student_id AND DATE(sl.scan_time) = ? AND sl.scan_type = 'ENTRY'
            WHERE s.status = 'Active'
            AND s.student_id NOT IN (
                SELECT sl2.student_id FROM scan_logs sl2
                WHERE DATE(sl2.scan_time) = ? AND sl2.scan_type = 'EXIT'
                AND sl2.scan_time > COALESCE((
                    SELECT MAX(sl3.scan_time) FROM scan_logs sl3
                    WHERE sl3.student_id = sl2.student_id AND DATE(sl3.scan_time) = ? AND sl3.scan_type = 'ENTRY'
                ), '1970-01-01')
            )
            ORDER BY student_name
        ");
        $insideStudents->execute([$userId, $today, $today, $today]);

        $cntStmt = $db->prepare("SELECT COUNT(*) FROM students s JOIN teacher_sections ts ON s.section_id = ts.section_id WHERE ts.teacher_id = ? AND s.status = 'Active'");
        $cntStmt->execute([$userId]);

        // Active pull-outs in teacher's sections (handle missing table)
        try {
            $pullOuts = $db->prepare("
                SELECT po.pull_out_id, po.student_id, s.first_name || ' ' || s.last_name as student_name,
                       s.photo as student_photo, po.picked_up_by, po.purpose, po.time_pulled
                FROM pull_outs po
                JOIN students s ON po.student_id = s.student_id
                JOIN teacher_sections ts ON s.section_id = ts.section_id AND ts.teacher_id = ?
                WHERE po.status = 'Out'
                ORDER BY po.time_pulled DESC LIMIT 5
            ");
            $pullOuts->execute([$userId]);
            $pullOutsData = $pullOuts->fetchAll();
        } catch (\Throwable $e) {
            $pullOutsData = [];
        }

        // Pending excuses in teacher's sections (handle missing table)
        try {
            $excuses = $db->prepare("
                SELECT e.excuse_id, e.student_id, s.first_name || ' ' || s.last_name as student_name,
                       s.photo as student_photo, e.type, e.reason, e.excuse_date, e.created_at
                FROM excuses e
                JOIN students s ON e.student_id = s.student_id
                JOIN teacher_sections ts ON s.section_id = ts.section_id AND ts.teacher_id = ?
                WHERE e.status = 'Pending'
                ORDER BY e.created_at DESC LIMIT 5
            ");
            $excuses->execute([$userId]);
            $excusesData = $excuses->fetchAll();
        } catch (\Throwable $e) {
            $excusesData = [];
        }

        return [
            'sections' => $sections->fetchAll(),
            'inside_students' => $insideStudents->fetchAll(),
            'total_my_students' => (int)$cntStmt->fetchColumn(),
            'active_pull_outs' => $pullOutsData,
            'pending_excuses' => $excusesData,
        ];
    }

    public static function getStaffDashboard(): array
    {
        $db = self::getDb();
        $today = date('Y-m-d');

        $stmt = $db->prepare("SELECT COUNT(*) FROM attendance WHERE attendance_date = ?");
        $stmt->execute([$today]);
        $totalToday = $stmt->fetchColumn();

        $stmt = $db->prepare("SELECT COUNT(*) FROM attendance WHERE attendance_date = ? AND status = 'Late'");
        $stmt->execute([$today]);

        return [
            'attendance_today' => intval($totalToday),
            'late_today' => intval($stmt->fetchColumn()),
        ];
    }

    public static function getViewerDashboard(): array
    {
        $db = self::getDb();
        $today = date('Y-m-d');

        $stmt = $db->prepare("SELECT COUNT(*) FROM attendance WHERE attendance_date = ?");
        $stmt->execute([$today]);
        $totalToday = $stmt->fetchColumn();

        $stmt = $db->prepare("SELECT status, COUNT(*) as count FROM attendance WHERE attendance_date = ? GROUP BY status");
        $stmt->execute([$today]);

        return [
            'attendance_today' => intval($totalToday),
            'breakdown' => $stmt->fetchAll(),
        ];
    }

    public static function sendAttendanceNotification(int $attendanceId): array
    {
        $db = self::getDb();

        $stmt = $db->prepare("
            SELECT a.*, s.first_name || ' ' || s.last_name as student_name,
                   s.student_number, s.lrn, s.first_name, s.last_name,
                   sec.grade_level, sec.section_name,
                   p.first_name || ' ' || p.last_name as parent_name,
                   p.email as parent_email
            FROM attendance a
            JOIN students s ON a.student_id = s.student_id
            LEFT JOIN sections sec ON s.section_id = sec.section_id
            LEFT JOIN parents p ON s.parent_id = p.parent_id
            WHERE a.attendance_id = ?
        ");
        $stmt->execute([$attendanceId]);
        $record = $stmt->fetch();

        if (!$record) {
            return ['success' => false, 'message' => 'Attendance record not found'];
        }
        if (empty($record['parent_email'])) {
            return ['success' => false, 'message' => 'No parent email found for this student'];
        }

        $settings = SystemSettings::getAll();
        $schoolName = $settings['school_name'] ?? 'School Name';
        $schoolAddress = $settings['school_address'] ?? '';

        $timeIn = !empty($record['time_in']) ? date('h:i A', strtotime($record['time_in'])) : '--';
        $timeOut = !empty($record['time_out']) ? date('h:i A', strtotime($record['time_out'])) : '--';
        $date = date('F j, Y', strtotime($record['attendance_date']));
        $status = $record['status'] ?? '--';
        $studentName = $record['first_name'] . ' ' . $record['last_name'];
        $studentId = $record['student_number'] ?? $record['lrn'] ?? '--';
        $section = ($record['grade_level'] ?? '') . ' - ' . ($record['section_name'] ?? '');
        $parentName = $record['parent_name'] ?? 'Parent/Guardian';

        $subject = "Attendance Notification - $studentName";

        $message = "
        <!DOCTYPE html>
        <html>
        <head><meta charset='UTF-8'></head>
        <body style='margin:0;padding:0;background:#f4f4f4;font-family:Arial,sans-serif;'>
            <table width='100%' cellpadding='0' cellspacing='0' style='background:#f4f4f4;padding:20px;'>
                <tr><td align='center'>
                    <table width='600' cellpadding='0' cellspacing='0' style='background:#ffffff;border-radius:8px;overflow:hidden;box-shadow:0 2px 8px rgba(0,0,0,0.1);'>
                        <tr>
                            <td style='background:#1e293b;padding:25px 20px;text-align:center;'>
                                <table cellpadding='0' cellspacing='0' style='margin:0 auto;'>
                                    <tr>
                                        <td style='vertical-align:middle;padding-right:12px;'>
                                            <img src='cid:logo_img' alt='$schoolName' width='40' height='40' style='border-radius:8px;'>
                                        </td>
                                        <td style='vertical-align:middle;text-align:left;'>
                                            <h1 style='color:#ffffff;margin:0;font-size:20px;'>$schoolName</h1>
                                            <p style='color:#93c5fd;margin:2px 0 0;font-size:12px;'>Attendance Notification System</p>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style='padding:30px 30px 20px;'>
                                <p style='color:#334155;font-size:14px;line-height:1.6;margin:0 0 5px;'>Dear <strong>$parentName</strong>,</p>
                                <p style='color:#334155;font-size:14px;line-height:1.6;margin:0 0 15px;'>This is to notify you of the attendance record of your child:</p>
                                <table width='100%' cellpadding='8' cellspacing='0' style='background:#f8fafc;border-radius:6px;margin:15px 0;font-size:14px;border:1px solid #e2e8f0;'>
                                    <tr><td style='color:#64748b;width:140px;border-bottom:1px solid #e2e8f0;'><strong>Student Name</strong></td><td style='color:#1e293b;border-bottom:1px solid #e2e8f0;'>$studentName</td></tr>
                                    <tr><td style='color:#64748b;border-bottom:1px solid #e2e8f0;'><strong>Student ID / LRN</strong></td><td style='color:#1e293b;border-bottom:1px solid #e2e8f0;'>$studentId</td></tr>
                                    <tr><td style='color:#64748b;border-bottom:1px solid #e2e8f0;'><strong>Grade & Section</strong></td><td style='color:#1e293b;border-bottom:1px solid #e2e8f0;'>$section</td></tr>
                                    <tr><td style='color:#64748b;border-bottom:1px solid #e2e8f0;'><strong>Date</strong></td><td style='color:#1e293b;border-bottom:1px solid #e2e8f0;'>$date</td></tr>
                                    <tr><td style='color:#64748b;border-bottom:1px solid #e2e8f0;'><strong>Time In</strong></td><td style='color:#1e293b;border-bottom:1px solid #e2e8f0;'>$timeIn</td></tr>
                                    <tr><td style='color:#64748b;border-bottom:1px solid #e2e8f0;'><strong>Time Out</strong></td><td style='color:#1e293b;border-bottom:1px solid #e2e8f0;'>$timeOut</td></tr>
                                    <tr><td style='color:#64748b;'><strong>Status</strong></td><td style='color:#1e293b;font-weight:600;'>$status</td></tr>
                                </table>
                                <p style='color:#334155;font-size:14px;line-height:1.6;margin:15px 0 0;'>Thank you for your continued support in ensuring your child's attendance and punctuality.</p>
                            </td>
                        </tr>
                        <tr>
                            <td style='background:#f8fafc;padding:20px;text-align:center;border-top:2px solid #e2e8f0;'>
                                <p style='color:#64748b;font-size:13px;font-weight:600;margin:0;'>$schoolName</p>
                                <p style='color:#94a3b8;font-size:12px;margin:3px 0;'>$schoolAddress</p>
                                <p style='color:#94a3b8;font-size:11px;margin:8px 0 0;padding-top:8px;border-top:1px solid #e2e8f0;'>This is an automated message from the School Gate Attendance System. Please do not reply to this email.</p>
                            </td>
                        </tr>
                    </table>
                </td></tr>
            </table>
        </body>
        </html>";

        $stmt = $db->prepare("
            INSERT INTO email_logs (student_id, parent_email, notification_type, subject, message, send_status)
            VALUES (?, ?, 'Attendance', ?, ?, 'Pending')
            RETURNING email_log_id
        ");
        $stmt->execute([$record['student_id'], $record['parent_email'], $subject, $message]);
        $logId = $stmt->fetchColumn();

        try {
            EmailLog::send($logId);
            return ['success' => true, 'message' => 'Attendance notification sent successfully'];
        } catch (\Exception $e) {
            $stmt = $db->prepare("UPDATE email_logs SET send_status = 'Failed' WHERE email_log_id = ?");
            $stmt->execute([$logId]);
            return ['success' => false, 'message' => 'Failed to send notification: ' . $e->getMessage()];
        }
    }
}
