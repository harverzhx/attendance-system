<?php

namespace App\models;

class ParentModel extends Database
{
    public static function getAll(): array
    {
        $db = self::getDb();
        $stmt = $db->query("
            SELECT p.*, 
                   (SELECT COUNT(*) FROM students WHERE parent_id = p.parent_id) as student_count
            FROM parents p 
            ORDER BY p.created_at DESC
        ");
        return $stmt->fetchAll();
    }

    public static function getById(int $id): ?array
    {
        $db = self::getDb();
        $stmt = $db->prepare("SELECT * FROM parents WHERE parent_id = ?");
        $stmt->execute([$id]);
        return $stmt->fetch() ?: null;
    }

    public static function getByUsername(string $username): ?array
    {
        $db = self::getDb();
        $stmt = $db->prepare("SELECT * FROM parents WHERE LOWER(username) = LOWER(?)");
        $stmt->execute([$username]);
        return $stmt->fetch() ?: null;
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

        $stmt = $db->prepare("
            INSERT INTO parents (first_name, middle_name, last_name, relationship, email, contact_number, username, password, status)
            VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)
            RETURNING parent_id
        ");
        $stmt->execute([
            $data['first_name'],
            $data['middle_name'] ?? null,
            $data['last_name'],
            $data['relationship'] ?? 'Parent',
            $data['email'],
            $data['contact_number'] ?? null,
            $data['username'],
            password_hash($data['password'], PASSWORD_BCRYPT),
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

        foreach (['first_name', 'middle_name', 'last_name', 'relationship', 'email', 'contact_number', 'status'] as $field) {
            if (isset($data[$field])) {
                $fields[] = "$field = ?";
                $params[] = $data[$field];
            }
        }

        if (empty($fields)) return false;

        $fields[] = "updated_at = CURRENT_TIMESTAMP";
        $params[] = $id;

        $sql = "UPDATE parents SET " . implode(', ', $fields) . " WHERE parent_id = ?";
        $stmt = $db->prepare($sql);
        return $stmt->execute($params);
    }

    public static function delete(int $id): bool
    {
        $db = self::getDb();
        $stmt = $db->prepare("DELETE FROM parents WHERE parent_id = ?");
        return $stmt->execute([$id]);
    }

    public static function getDashboard(int $parentId): ?array
    {
        $db = self::getDb();
        $children = self::getChildren($parentId);

        $result = [
            'parent' => self::getById($parentId),
            'children' => [],
        ];

        foreach ($children as $child) {
            $stmt = $db->prepare("
                SELECT 
                    COUNT(*) FILTER (WHERE status = 'Present') as present_count,
                    COUNT(*) FILTER (WHERE status = 'Late') as late_count,
                    COUNT(*) FILTER (WHERE status = 'Absent') as absent_count
                FROM attendance 
                WHERE student_id = ?
            ");
            $stmt->execute([$child['student_id']]);
            $summary = $stmt->fetch();

            $child['attendance_summary'] = $summary;
            $result['children'][] = $child;
        }

        return $result;
    }

    public static function getChildren(int $parentId): array
    {
        $db = self::getDb();
        $stmt = $db->prepare("
            SELECT s.*, sec.grade_level, sec.section_name 
            FROM students s
            LEFT JOIN sections sec ON s.section_id = sec.section_id
            WHERE s.parent_id = ? AND s.status = 'Active'
        ");
        $stmt->execute([$parentId]);
        return $stmt->fetchAll();
    }

    public static function getChildrenAttendance(int $parentId, ?string $dateFrom = null, ?string $dateTo = null): array
    {
        $db = self::getDb();
        $children = self::getChildren($parentId);
        $result = [];

        foreach ($children as $child) {
            $sql = "SELECT * FROM attendance WHERE student_id = ?";
            $params = [$child['student_id']];

            if ($dateFrom) {
                $sql .= " AND attendance_date >= ?";
                $params[] = $dateFrom;
            }
            if ($dateTo) {
                $sql .= " AND attendance_date <= ?";
                $params[] = $dateTo;
            }

            $sql .= " ORDER BY attendance_date DESC LIMIT 50";
            $stmt = $db->prepare($sql);
            $stmt->execute($params);
            $child['attendance_records'] = $stmt->fetchAll();
            $result[] = $child;
        }

        return $result;
    }

    public static function getNotifications(int $parentId): array
    {
        $db = self::getDb();
        $children = self::getChildren($parentId);
        $childIds = array_column($children, 'student_id');

        if (empty($childIds)) return [];

        $placeholders = implode(',', array_fill(0, count($childIds), '?'));
        $stmt = $db->prepare("
            SELECT * FROM email_logs 
            WHERE student_id IN ($placeholders)
            ORDER BY created_at DESC LIMIT 50
        ");
        $stmt->execute($childIds);
        return $stmt->fetchAll();
    }
}
