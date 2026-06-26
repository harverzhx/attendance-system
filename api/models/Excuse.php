<?php

namespace App\models;

class Excuse extends Database
{
    public static function create(array $data): ?int
    {
        $db = self::getDb();
        $stmt = $db->prepare("
            INSERT INTO excuses (student_id, attendance_id, excuse_date, type, reason, document_path, submitted_by)
            VALUES (?, ?, ?, ?, ?, ?, ?)
            RETURNING excuse_id
        ");
        $stmt->execute([
            $data['student_id'],
            $data['attendance_id'] ?? null,
            $data['excuse_date'],
            $data['type'],
            $data['reason'],
            $data['document_path'] ?? null,
            $data['submitted_by'] ?? 'Parent',
        ]);
        return $stmt->fetchColumn() ?: null;
    }

    public static function getAll(array $filters = []): array
    {
        $db = self::getDb();
        $sql = "
            SELECT e.*, s.student_number, s.first_name || ' ' || s.last_name as student_name,
                   s.photo as student_photo, sec.grade_level, sec.section_name
            FROM excuses e
            JOIN students s ON e.student_id = s.student_id
            LEFT JOIN sections sec ON s.section_id = sec.section_id
            WHERE 1=1
        ";
        $params = [];

        if (!empty($filters['status'])) {
            $sql .= " AND e.status = ?";
            $params[] = $filters['status'];
        }
        if (!empty($filters['student_id'])) {
            $sql .= " AND e.student_id = ?";
            $params[] = $filters['student_id'];
        }
        if (!empty($filters['section_id'])) {
            $sql .= " AND s.section_id = ?";
            $params[] = $filters['section_id'];
        }
        if (!empty($filters['teacher_id'])) {
            $sql .= " AND s.section_id IN (SELECT section_id FROM teacher_sections WHERE teacher_id = ?)";
            $params[] = $filters['teacher_id'];
        }
        if (!empty($filters['adviser_id'])) {
            $sql .= " AND sec.adviser_id = ?";
            $params[] = $filters['adviser_id'];
        }
        if (!empty($filters['date'])) {
            $sql .= " AND e.excuse_date = ?";
            $params[] = $filters['date'];
        }
        if (!empty($filters['type'])) {
            $sql .= " AND e.type = ?";
            $params[] = $filters['type'];
        }

        $sql .= " ORDER BY e.created_at DESC";
        $stmt = $db->prepare($sql);
        $stmt->execute($params);
        return $stmt->fetchAll();
    }

    public static function getById(int $id): ?array
    {
        $db = self::getDb();
        $stmt = $db->prepare("
            SELECT e.*, s.student_number, s.first_name || ' ' || s.last_name as student_name,
                   s.photo as student_photo, sec.grade_level, sec.section_name,
                   a.status as attendance_status
            FROM excuses e
            JOIN students s ON e.student_id = s.student_id
            LEFT JOIN sections sec ON s.section_id = sec.section_id
            LEFT JOIN attendance a ON e.attendance_id = a.attendance_id
            WHERE e.excuse_id = ?
        ");
        $stmt->execute([$id]);
        return $stmt->fetch() ?: null;
    }

    public static function approveByTeacher(int $id, int $teacherId): bool
    {
        $db = self::getDb();
        $stmt = $db->prepare("UPDATE excuses SET status = 'Teacher Approved', teacher_reviewed_by = ?, teacher_reviewed_at = CURRENT_TIMESTAMP, updated_at = CURRENT_TIMESTAMP WHERE excuse_id = ? AND status = 'Pending'");
        return $stmt->execute([$teacherId, $id]);
    }

    public static function approveFinal(int $id, int $userId): bool
    {
        $db = self::getDb();
        $stmt = $db->prepare("UPDATE excuses SET status = 'Approved', approved_by = ?, approved_at = CURRENT_TIMESTAMP, updated_at = CURRENT_TIMESTAMP WHERE excuse_id = ? AND status = 'Teacher Approved'");
        return $stmt->execute([$userId, $id]);
    }

    public static function reject(int $id, int $userId, string $reason): bool
    {
        $db = self::getDb();
        $stmt = $db->prepare("UPDATE excuses SET status = 'Rejected', rejection_reason = ?, approved_by = ?, approved_at = CURRENT_TIMESTAMP, updated_at = CURRENT_TIMESTAMP WHERE excuse_id = ?");
        return $stmt->execute([$reason, $userId, $id]);
    }

    public static function delete(int $id): bool
    {
        $db = self::getDb();
        $stmt = $db->prepare("DELETE FROM excuses WHERE excuse_id = ?");
        return $stmt->execute([$id]);
    }
}
