<?php

namespace App\models;

class PullOut extends Database
{
    public static function create(array $data): ?int
    {
        $db = self::getDb();
        $stmt = $db->prepare("
            INSERT INTO pull_outs (student_id, scan_id, picked_up_by, relationship, purpose, status, created_by)
            VALUES (?, ?, ?, ?, ?, 'Out', ?)
            RETURNING pull_out_id
        ");
        $stmt->execute([
            $data['student_id'],
            $data['scan_id'] ?? null,
            $data['picked_up_by'],
            $data['relationship'] ?? null,
            $data['purpose'] ?? null,
            $data['created_by'] ?? null,
        ]);
        return $stmt->fetchColumn() ?: null;
    }

    public static function getAll(array $filters = []): array
    {
        $db = self::getDb();
        $sql = "
            SELECT po.*, s.student_number, s.first_name || ' ' || s.last_name as student_name,
                   s.photo as student_photo, sec.grade_level, sec.section_name
            FROM pull_outs po
            JOIN students s ON po.student_id = s.student_id
            LEFT JOIN sections sec ON s.section_id = sec.section_id
            WHERE 1=1
        ";
        $params = [];

        if (!empty($filters['status'])) {
            $sql .= " AND po.status = ?";
            $params[] = $filters['status'];
        }
        if (!empty($filters['student_id'])) {
            $sql .= " AND po.student_id = ?";
            $params[] = $filters['student_id'];
        }
        if (!empty($filters['date'])) {
            $sql .= " AND DATE(po.time_pulled) = ?";
            $params[] = $filters['date'];
        }

        $sql .= " ORDER BY po.time_pulled DESC";
        $stmt = $db->prepare($sql);
        $stmt->execute($params);
        return $stmt->fetchAll();
    }

    public static function getActive(): array
    {
        return self::getAll(['status' => 'Out']);
    }

    public static function getById(int $id): ?array
    {
        $db = self::getDb();
        $stmt = $db->prepare("
            SELECT po.*, s.student_number, s.first_name || ' ' || s.last_name as student_name,
                   s.photo as student_photo, sec.grade_level, sec.section_name
            FROM pull_outs po
            JOIN students s ON po.student_id = s.student_id
            LEFT JOIN sections sec ON s.section_id = sec.section_id
            WHERE po.pull_out_id = ?
        ");
        $stmt->execute([$id]);
        return $stmt->fetch() ?: null;
    }

    public static function markReturned(int $id): bool
    {
        $db = self::getDb();
        $stmt = $db->prepare("UPDATE pull_outs SET status = 'Returned', time_returned = CURRENT_TIMESTAMP, updated_at = CURRENT_TIMESTAMP WHERE pull_out_id = ?");
        return $stmt->execute([$id]);
    }

    public static function getActiveByStudent(int $studentId): ?array
    {
        $db = self::getDb();
        $stmt = $db->prepare("SELECT * FROM pull_outs WHERE student_id = ? AND status = 'Out' ORDER BY time_pulled DESC LIMIT 1");
        $stmt->execute([$studentId]);
        return $stmt->fetch() ?: null;
    }
}
