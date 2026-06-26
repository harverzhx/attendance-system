<?php

namespace App\models;

class Registration extends Database
{
    public static function create(array $data): ?int
    {
        $db = self::getDb();

        // Check if registration is enabled
        $settings = SystemSettings::getAll();
        $enabled = $settings['registration_enabled'] ?? 't';
        if ($enabled === 'f' || $enabled === false) {
            return null;
        }

        // Validate contact number
        $err = self::validateContactNumber($data['contact_number'] ?? null);
        if ($err) throw new \InvalidArgumentException($err);

        // Validate email
        $err = self::validateEmail($data['email'] ?? null);
        if ($err) throw new \InvalidArgumentException($err);

        // Auto-format names to Proper Case
        $data['first_name'] = self::toProperCase($data['first_name'] ?? '');
        $data['last_name'] = self::toProperCase($data['last_name'] ?? '');

        // First create the user
        $stmt = $db->prepare("
            INSERT INTO users (first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, specialization)
            VALUES (?, ?, ?, ?, ?, ?, ?, (SELECT role_id FROM roles WHERE role_name = ?), 'Inactive', ?)
            RETURNING user_id
        ");
        $stmt->execute([
            $data['first_name'],
            $data['middle_name'] ?? null,
            $data['last_name'],
            $data['email'],
            $data['contact_number'] ?? null,
            self::toProperCase($data['username']),
            password_hash($data['password'], PASSWORD_BCRYPT),
            $data['role'] ?? 'Viewer',
            $data['specialization'] ?? null,
        ]);
        $userId = $stmt->fetchColumn();

        if (!$userId) return null;

        // Create registration record
        $stmt = $db->prepare("
            INSERT INTO registrations (user_id, approval_status)
            VALUES (?, 'Pending')
            RETURNING registration_id
        ");
        $stmt->execute([$userId]);

        AuditLog::log($userId, 'REGISTER', "New {$data['role']} registration submitted");

        return $stmt->fetchColumn() ?: null;
    }

    public static function getAll(?string $status = null): array
    {
        $db = self::getDb();
        $sql = "
            SELECT r.*, u.first_name, u.last_name, u.email, u.username, rol.role_name
            FROM registrations r
            JOIN users u ON r.user_id = u.user_id
            JOIN roles rol ON u.role_id = rol.role_id
        ";
        $params = [];

        if ($status) {
            $sql .= " WHERE r.approval_status = ?";
            $params[] = $status;
        }

        $sql .= " ORDER BY r.created_at DESC";
        $stmt = $db->prepare($sql);
        $stmt->execute($params);
        return $stmt->fetchAll();
    }

    public static function approve(int $id, int $adminId): bool
    {
        $db = self::getDb();
        $stmt = $db->prepare("
            UPDATE registrations 
            SET approval_status = 'Approved', approved_by = ?, approved_date = CURRENT_TIMESTAMP 
            WHERE registration_id = ?
            RETURNING user_id
        ");
        $stmt->execute([$adminId, $id]);
        $userId = $stmt->fetchColumn();

        if ($userId) {
            $stmt = $db->prepare("UPDATE users SET status = 'Active' WHERE user_id = ?");
            $stmt->execute([$userId]);
            return true;
        }
        return false;
    }

    public static function reject(int $id, int $adminId): bool
    {
        $db = self::getDb();
        $stmt = $db->prepare("
            UPDATE registrations 
            SET approval_status = 'Rejected', approved_by = ?, approved_date = CURRENT_TIMESTAMP 
            WHERE registration_id = ?
        ");
        return $stmt->execute([$adminId, $id]);
    }
}
