<?php

namespace App\models;

class Section extends Database
{
    public static function getAll(): array
    {
        $db = self::getDb();
        $stmt = $db->query("
            SELECT s.*, u.first_name || ' ' || u.last_name as adviser_name,
                   (SELECT COUNT(*) FROM students WHERE section_id = s.section_id AND status = 'Active') as student_count
            FROM sections s
            LEFT JOIN users u ON s.adviser_id = u.user_id
            ORDER BY s.grade_level, s.section_name
        ");
        return $stmt->fetchAll();
    }

    public static function getById(int $id): ?array
    {
        $db = self::getDb();
        $stmt = $db->prepare("
            SELECT s.*, u.first_name || ' ' || u.last_name as adviser_name
            FROM sections s
            LEFT JOIN users u ON s.adviser_id = u.user_id
            WHERE s.section_id = ?
        ");
        $stmt->execute([$id]);
        return $stmt->fetch() ?: null;
    }

    public static function create(array $data): ?int
    {
        $db = self::getDb();
        $stmt = $db->prepare("
            INSERT INTO sections (grade_level, section_name, adviser_id, school_year, status)
            VALUES (?, ?, ?, ?, ?)
            RETURNING section_id
        ");
        $stmt->execute([
            $data['grade_level'],
            $data['section_name'],
            $data['adviser_id'] ?? null,
            $data['school_year'] ?? date('Y') . '-' . (date('Y') + 1),
            $data['status'] ?? 'Active',
        ]);
        return $stmt->fetchColumn() ?: null;
    }

    public static function update(int $id, array $data): bool
    {
        $db = self::getDb();
        $fields = [];
        $params = [];

        foreach (['grade_level', 'section_name', 'adviser_id', 'school_year', 'status'] as $field) {
            if (isset($data[$field])) {
                $fields[] = "$field = ?";
                $params[] = $data[$field];
            }
        }

        if (empty($fields)) return false;

        $fields[] = "updated_at = CURRENT_TIMESTAMP";
        $params[] = $id;

        $sql = "UPDATE sections SET " . implode(', ', $fields) . " WHERE section_id = ?";
        $stmt = $db->prepare($sql);
        return $stmt->execute($params);
    }

    public static function delete(int $id): bool
    {
        $db = self::getDb();

        // Check if section has students
        $stmt = $db->prepare("SELECT COUNT(*) FROM students WHERE section_id = ?");
        $stmt->execute([$id]);
        if ($stmt->fetchColumn() > 0) {
            return false;
        }

        $stmt = $db->prepare("DELETE FROM sections WHERE section_id = ?");
        return $stmt->execute([$id]);
    }

    public static function assignAdviser(int $sectionId, ?int $adviserId): bool
    {
        $db = self::getDb();
        $stmt = $db->prepare("UPDATE sections SET adviser_id = ?, updated_at = CURRENT_TIMESTAMP WHERE section_id = ?");
        return $stmt->execute([$adviserId, $sectionId]);
    }
}
