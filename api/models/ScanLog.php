<?php

namespace App\models;

class ScanLog extends Database
{
    public static function create(int $studentId, string $scanType, ?string $exitType = null, ?string $remarks = null): int
    {
        $db = self::getDb();
        $stmt = $db->prepare("
            INSERT INTO scan_logs (student_id, scan_type, exit_type, remarks, scan_time)
            VALUES (?, ?, ?, ?, CURRENT_TIMESTAMP)
            RETURNING scan_id
        ");
        $stmt->execute([$studentId, $scanType, $exitType, $remarks]);
        return (int)$stmt->fetchColumn();
    }

    public static function getAll(array $filters = []): array
    {
        $db = self::getDb();
        $sql = "
            SELECT sl.*, s.first_name || ' ' || s.last_name as student_name,
                   s.student_number, s.photo as student_photo, sec.grade_level, sec.section_name
            FROM scan_logs sl
            JOIN students s ON sl.student_id = s.student_id
            LEFT JOIN sections sec ON s.section_id = sec.section_id
            WHERE 1=1
        ";
        $params = [];

        if (!empty($filters['student_id'])) {
            $sql .= " AND sl.student_id = ?";
            $params[] = $filters['student_id'];
        }
        if (!empty($filters['scan_type'])) {
            $sql .= " AND sl.scan_type = ?";
            $params[] = $filters['scan_type'];
        }
        if (!empty($filters['date'])) {
            $sql .= " AND DATE(sl.scan_time) = ?";
            $params[] = $filters['date'];
        }
        if (!empty($filters['date_from'])) {
            $sql .= " AND DATE(sl.scan_time) >= ?";
            $params[] = $filters['date_from'];
        }
        if (!empty($filters['date_to'])) {
            $sql .= " AND DATE(sl.scan_time) <= ?";
            $params[] = $filters['date_to'];
        }
        if (!empty($filters['exit_type'])) {
            $sql .= " AND sl.exit_type = ?";
            $params[] = $filters['exit_type'];
        }
        if (!empty($filters['search'])) {
            $sql .= " AND (s.first_name ILIKE ? OR s.last_name ILIKE ? OR s.student_number ILIKE ?)";
            $search = "%{$filters['search']}%";
            $params = array_merge($params, [$search, $search, $search]);
        }

        $sql .= " ORDER BY sl.scan_time DESC LIMIT 500";
        $stmt = $db->prepare($sql);
        $stmt->execute($params);
        return $stmt->fetchAll();
    }

    public static function getLatestScan(int $studentId, string $date): ?array
    {
        $db = self::getDb();
        $stmt = $db->prepare("
            SELECT * FROM scan_logs
            WHERE student_id = ? AND DATE(scan_time) = ?
            ORDER BY scan_time DESC LIMIT 1
        ");
        $stmt->execute([$studentId, $date]);
        return $stmt->fetch() ?: null;
    }

    public static function getStudentsInside(?string $date = null): array
    {
        $db = self::getDb();
        $date = $date ?? date('Y-m-d');
        $sql = "
            SELECT DISTINCT s.student_id, s.first_name || ' ' || s.last_name as student_name,
                   s.student_number, s.photo, sec.grade_level, sec.section_name,
                   sl.scan_time as last_entry,
                   first_entry.scan_time as first_entry_time
            FROM students s
            JOIN scan_logs sl ON s.student_id = sl.student_id
            LEFT JOIN sections sec ON s.section_id = sec.section_id
            CROSS JOIN LATERAL (
                SELECT scan_time FROM scan_logs
                WHERE student_id = s.student_id AND DATE(scan_time) = ? AND scan_type = 'ENTRY'
                ORDER BY scan_time ASC LIMIT 1
            ) first_entry
            WHERE DATE(sl.scan_time) = ? AND sl.scan_type = 'ENTRY'
            AND s.student_id NOT IN (
                SELECT sl2.student_id FROM scan_logs sl2
                WHERE DATE(sl2.scan_time) = ? AND sl2.scan_type = 'EXIT'
                AND sl2.scan_time > COALESCE((
                    SELECT MAX(sl3.scan_time) FROM scan_logs sl3
                    WHERE sl3.student_id = sl2.student_id AND DATE(sl3.scan_time) = ? AND sl3.scan_type = 'ENTRY'
                ), '1970-01-01')
            )
            AND s.status = 'Active'
            ORDER BY sl.scan_time DESC
        ";
        $stmt = $db->prepare($sql);
        $stmt->execute([$date, $date, $date, $date]);
        return $stmt->fetchAll();
    }

    public static function getStudentsOutside(?string $date = null): array
    {
        $db = self::getDb();
        $date = $date ?? date('Y-m-d');
        $sql = "
            SELECT DISTINCT s.student_id, s.first_name || ' ' || s.last_name as student_name,
                   s.student_number, s.photo, sec.grade_level, sec.section_name,
                   sl.scan_time as last_exit
            FROM students s
            JOIN scan_logs sl ON s.student_id = sl.student_id
            LEFT JOIN sections sec ON s.section_id = sec.section_id
            WHERE DATE(sl.scan_time) = ? AND sl.scan_type = 'EXIT'
            AND s.student_id NOT IN (
                SELECT sl2.student_id FROM scan_logs sl2
                WHERE DATE(sl2.scan_time) = ? AND sl2.scan_type = 'ENTRY'
                AND sl2.scan_time > COALESCE((
                    SELECT MAX(sl3.scan_time) FROM scan_logs sl3
                    WHERE sl3.student_id = sl2.student_id AND DATE(sl3.scan_time) = ? AND sl3.scan_type = 'EXIT'
                ), '1970-01-01')
            )
            AND s.status = 'Active'
            ORDER BY sl.scan_time DESC
        ";
        $stmt = $db->prepare($sql);
        $stmt->execute([$date, $date, $date]);
        return $stmt->fetchAll();
    }

    public static function getLastUpdate(): array
    {
        $db = self::getDb();
        $stmt = $db->query("SELECT MAX(scan_time) as last_time, COUNT(*) as total FROM scan_logs");
        return $stmt->fetch() ?: ['last_time' => null, 'total' => 0];
    }

    public static function getTodaySummary(): array
    {
        $db = self::getDb();
        $today = date('Y-m-d');

        $entries = $db->prepare("SELECT COUNT(*) FROM scan_logs WHERE DATE(scan_time) = ? AND scan_type = 'ENTRY'");
        $entries->execute([$today]);
        $entryCount = (int)$entries->fetchColumn();

        $exits = $db->prepare("SELECT COUNT(*) FROM scan_logs WHERE DATE(scan_time) = ? AND scan_type = 'EXIT'");
        $exits->execute([$today]);
        $exitCount = (int)$exits->fetchColumn();

        $exitTypes = $db->prepare("
            SELECT exit_type, COUNT(*) as count FROM scan_logs
            WHERE DATE(scan_time) = ? AND scan_type = 'EXIT' AND exit_type IS NOT NULL
            GROUP BY exit_type ORDER BY count DESC
        ");
        $exitTypes->execute([$today]);

        $recent = $db->prepare("
            SELECT sl.*, s.first_name || ' ' || s.last_name as student_name, s.photo, sec.grade_level, sec.section_name
            FROM scan_logs sl
            JOIN students s ON sl.student_id = s.student_id
            LEFT JOIN sections sec ON s.section_id = sec.section_id
            WHERE DATE(sl.scan_time) = ?
            ORDER BY sl.scan_time DESC LIMIT 50
        ");
        $recent->execute([$today]);

        $notYetEntered = $db->prepare("
            SELECT COUNT(*) FROM students s
            WHERE s.status = 'Active' AND s.student_id NOT IN (
                SELECT sl.student_id FROM scan_logs sl WHERE DATE(sl.scan_time) = ?
            )
        ");
        $notYetEntered->execute([$today]);

        return [
            'today_entries' => $entryCount,
            'today_exits' => $exitCount,
            'students_inside' => count(self::getStudentsInside($today)),
            'students_outside' => count(self::getStudentsOutside($today)),
            'students_not_yet_entered' => (int)$notYetEntered->fetchColumn(),
            'exit_type_summary' => $exitTypes->fetchAll(),
            'recent_scans' => $recent->fetchAll(),
        ];
    }
}