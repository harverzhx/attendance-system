<?php

namespace App\models;

class Student extends Database
{
    public static function getAll(array $filters = []): array
    {
        $db = self::getDb();
        $sql = "
            SELECT s.*, sec.grade_level, sec.section_name,
                   p.first_name || ' ' || p.last_name as parent_name
            FROM students s
            LEFT JOIN sections sec ON s.section_id = sec.section_id
            LEFT JOIN parents p ON s.parent_id = p.parent_id
            WHERE 1=1
        ";
        $params = [];

        if (!empty($filters['section_id'])) {
            $ids = explode(',', $filters['section_id']);
            $placeholders = [];
            foreach ($ids as $id) {
                $id = trim($id);
                if (is_numeric($id)) {
                    $placeholders[] = '?';
                    $params[] = (int)$id;
                }
            }
            if (!empty($placeholders)) {
                $sql .= " AND s.section_id IN (" . implode(',', $placeholders) . ")";
            }
        }
        if (!empty($filters['status'])) {
            $sql .= " AND s.status = ?";
            $params[] = $filters['status'];
        }
        if (!empty($filters['grade_level'])) {
            $sql .= " AND sec.grade_level = ?";
            $params[] = $filters['grade_level'];
        }
        if (!empty($filters['search'])) {
            $sql .= " AND (s.first_name ILIKE ? OR s.last_name ILIKE ? OR s.student_number ILIKE ? OR s.lrn ILIKE ?)";
            $search = "%{$filters['search']}%";
            $params = array_merge($params, [$search, $search, $search, $search]);
        }

        $sql .= " ORDER BY s.last_name, s.first_name";
        $stmt = $db->prepare($sql);
        $stmt->execute($params);
        return $stmt->fetchAll();
    }

    public static function getById(int $id): ?array
    {
        $db = self::getDb();
        $stmt = $db->prepare("
            SELECT s.*, sec.grade_level, sec.section_name,
                   p.first_name || ' ' || p.last_name as parent_name, p.email as parent_email, p.contact_number as parent_contact
            FROM students s
            LEFT JOIN sections sec ON s.section_id = sec.section_id
            LEFT JOIN parents p ON s.parent_id = p.parent_id
            WHERE s.student_id = ?
        ");
        $stmt->execute([$id]);
        return $stmt->fetch() ?: null;
    }

    public static function getBySection(int $sectionId): array
    {
        $db = self::getDb();
        $stmt = $db->prepare("
            SELECT s.*, p.first_name || ' ' || p.last_name as parent_name
            FROM students s
            LEFT JOIN parents p ON s.parent_id = p.parent_id
            WHERE s.section_id = ? AND s.status = 'Active'
            ORDER BY s.last_name, s.first_name
        ");
        $stmt->execute([$sectionId]);
        return $stmt->fetchAll();
    }

    public static function create(array $data): ?int
    {
        $db = self::getDb();

        // Validate contact number
        $err = self::validateContactNumber($data['contact_number'] ?? null);
        if ($err) throw new \InvalidArgumentException($err);

        // Validate email
        $err = self::validateEmail($data['email'] ?? null);
        if ($err) throw new \InvalidArgumentException($err);

        // Auto-format names to Proper Case
        $data['first_name'] = self::toProperCase($data['first_name'] ?? '');
        $data['last_name'] = self::toProperCase($data['last_name'] ?? '');
        if (!empty($data['middle_name'])) {
            $data['middle_name'] = self::toProperCase($data['middle_name']);
        }

        // Auto-generate student number if not provided
        $studentNumber = $data['student_number'] ?? self::generateStudentNumber();
        $settings = SystemSettings::getAll();
        $prefix = $settings['barcode_prefix'] ?? '2026-';
        $barcode = $data['barcode'] ?? $prefix . str_pad(substr($studentNumber, -4), 5, '0', STR_PAD_LEFT);
        $qrCode = null;

        $stmt = $db->prepare("
            INSERT INTO students (student_number, lrn, first_name, middle_name, last_name, gender, birthdate, address, contact_number, email, section_id, parent_id, qr_code, barcode, photo, status)
            VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
            RETURNING student_id
        ");
        $stmt->execute([
            $studentNumber,
            $data['lrn'],
            $data['first_name'],
            $data['middle_name'] ?? null,
            $data['last_name'],
            $data['gender'] ?? null,
            $data['birthdate'] ?? null,
            $data['address'] ?? null,
            $data['contact_number'] ?? null,
            $data['email'] ?? null,
            $data['section_id'] ?? null,
            $data['parent_id'] ?? null,
            $qrCode,
            $barcode,
            $data['photo'] ?? null,
            $data['status'] ?? 'Active',
        ]);
        return $stmt->fetchColumn() ?: null;
    }

    public static function update(int $id, array $data): bool
    {
        $db = self::getDb();
        $fields = [];
        $params = [];

        // Validate contact number
        if (isset($data['contact_number'])) {
            $err = self::validateContactNumber($data['contact_number']);
            if ($err) throw new \InvalidArgumentException($err);
        }

        // Validate email
        if (isset($data['email'])) {
            $err = self::validateEmail($data['email']);
            if ($err) throw new \InvalidArgumentException($err);
        }

        // Auto-format names to Proper Case
        if (isset($data['first_name'])) $data['first_name'] = self::toProperCase($data['first_name']);
        if (isset($data['last_name'])) $data['last_name'] = self::toProperCase($data['last_name']);
        if (isset($data['middle_name'])) $data['middle_name'] = self::toProperCase($data['middle_name']);

        foreach (['student_number', 'lrn', 'first_name', 'middle_name', 'last_name', 'gender', 'birthdate', 'address', 'contact_number', 'email', 'photo', 'section_id', 'parent_id', 'status'] as $field) {
            if (isset($data[$field])) {
                $fields[] = "$field = ?";
                $params[] = $data[$field];
            }
        }

        if (empty($fields)) return false;

        $fields[] = "updated_at = CURRENT_TIMESTAMP";
        $params[] = $id;

        $sql = "UPDATE students SET " . implode(', ', $fields) . " WHERE student_id = ?";
        $stmt = $db->prepare($sql);
        return $stmt->execute($params);
    }

    public static function delete(int $id): bool
    {
        $db = self::getDb();
        $stmt = $db->prepare("DELETE FROM students WHERE student_id = ?");
        return $stmt->execute([$id]);
    }

    public static function generateQRCode(int $id): ?string
    {
        $db = self::getDb();
        $student = self::getById($id);
        if (!$student) return null;

        $qrCode = 'QR-' . $student['student_number'] . '-' . uniqid();
        $stmt = $db->prepare("UPDATE students SET qr_code = ?, updated_at = CURRENT_TIMESTAMP WHERE student_id = ?");
        $stmt->execute([$qrCode, $id]);
        return $qrCode;
    }

    public static function generateBarcode(int $id): ?string
    {
        $db = self::getDb();
        $student = self::getById($id);
        if (!$student) return null;

        $settings = SystemSettings::getAll();
        $prefix = $settings['barcode_prefix'] ?? '2026-';
        $num = str_pad(substr($student['student_number'], -4), 5, '0', STR_PAD_LEFT);
        $barcode = $prefix . $num;
        $stmt = $db->prepare("UPDATE students SET barcode = ?, updated_at = CURRENT_TIMESTAMP WHERE student_id = ?");
        $stmt->execute([$barcode, $id]);
        return $barcode;
    }

    public static function findByBarcode(string $barcode): ?array
    {
        $db = self::getDb();
        $stmt = $db->prepare("
            SELECT s.*, sec.grade_level, sec.section_name,
                   p.first_name || ' ' || p.last_name as parent_name, p.email as parent_email
            FROM students s
            LEFT JOIN sections sec ON s.section_id = sec.section_id
            LEFT JOIN parents p ON s.parent_id = p.parent_id
            WHERE s.barcode = ? AND s.status = 'Active'
        ");
        $stmt->execute([$barcode]);
        return $stmt->fetch() ?: null;
    }

    public static function findByQRCode(string $qrCode): ?array
    {
        $db = self::getDb();
        $stmt = $db->prepare("
            SELECT s.*, sec.grade_level, sec.section_name,
                   p.first_name || ' ' || p.last_name as parent_name, p.email as parent_email
            FROM students s
            LEFT JOIN sections sec ON s.section_id = sec.section_id
            LEFT JOIN parents p ON s.parent_id = p.parent_id
            WHERE s.qr_code = ? AND s.status = 'Active'
        ");
        $stmt->execute([$qrCode]);
        return $stmt->fetch() ?: null;
    }

    public static function uploadPhoto(int $id, array $file): ?string
    {
        $allowed = ['jpg', 'jpeg', 'png', 'gif', 'webp'];
        $ext = strtolower(pathinfo($file['name'], PATHINFO_EXTENSION));
        if (!in_array($ext, $allowed)) return null;

        $uploadDir = __DIR__ . '/../../public/uploads/students/';
        $filename = 'student_' . $id . '_' . time() . '.' . $ext;
        $dest = $uploadDir . $filename;

        if (!move_uploaded_file($file['tmp_name'], $dest)) return null;

        $photoPath = '/uploads/students/' . $filename;
        $db = self::getDb();
        $stmt = $db->prepare("UPDATE students SET photo = ?, updated_at = CURRENT_TIMESTAMP WHERE student_id = ?");
        $stmt->execute([$photoPath, $id]);

        return $photoPath;
    }

    private static function generateStudentNumber(): string
    {
        $db = self::getDb();
        $stmt = $db->query("SELECT COALESCE(MAX(CAST(SPLIT_PART(student_number, '-', 2) AS INTEGER)), 0) + 1 FROM students");
        $next = $stmt->fetchColumn();
        return date('Y') . '-' . str_pad($next, 4, '0', STR_PAD_LEFT);
    }

}
