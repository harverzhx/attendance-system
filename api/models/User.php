<?php

namespace App\models;

class User extends Database
{
    public static function getAll(): array
    {
        $db = self::getDb();
        $stmt = $db->query("
            SELECT u.*, r.role_name 
            FROM users u 
            JOIN roles r ON u.role_id = r.role_id 
            ORDER BY u.created_at DESC
        ");
        return $stmt->fetchAll();
    }

    public static function getById(int $id): ?array
    {
        $db = self::getDb();
        $stmt = $db->prepare("
            SELECT u.*, r.role_name 
            FROM users u 
            JOIN roles r ON u.role_id = r.role_id 
            WHERE u.user_id = ?
        ");
        $stmt->execute([$id]);
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
            INSERT INTO users (employee_id, first_name, middle_name, last_name, email, contact_number, username, password, role_id, status, specialization)
            VALUES (?, ?, ?, ?, ?, ?, ?, ?, (SELECT role_id FROM roles WHERE role_name = ?), ?, ?)
            RETURNING user_id
        ");
        $stmt->execute([
            $data['employee_id'] ?? null,
            $data['first_name'],
            $data['middle_name'] ?? null,
            $data['last_name'],
            $data['email'],
            $data['contact_number'] ?? null,
            self::toProperCase($data['username']),
            password_hash($data['password'], PASSWORD_BCRYPT),
            $data['role'] ?? 'Viewer',
            $data['status'] ?? 'Active',
            $data['specialization'] ?? null,
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

        foreach (['employee_id', 'first_name', 'middle_name', 'last_name', 'email', 'contact_number', 'status', 'specialization'] as $field) {
            if (isset($data[$field])) {
                $fields[] = "$field = ?";
                $params[] = $data[$field];
            }
        }
        if (!empty($data['password'])) {
            $fields[] = "password = ?";
            $params[] = password_hash($data['password'], PASSWORD_BCRYPT);
        }
        if (!empty($data['role'])) {
            $fields[] = "role_id = (SELECT role_id FROM roles WHERE role_name = ?)";
            $params[] = $data['role'];
        }

        if (empty($fields)) return false;

        $fields[] = "updated_at = CURRENT_TIMESTAMP";
        $params[] = $id;

        $sql = "UPDATE users SET " . implode(', ', $fields) . " WHERE user_id = ?";
        $stmt = $db->prepare($sql);
        return $stmt->execute($params);
    }

    public static function delete(int $id): array
    {
        $db = self::getDb();

        // Check if user is assigned as adviser to any section
        $stmt = $db->prepare("SELECT COUNT(*) FROM sections WHERE adviser_id = ?");
        $stmt->execute([$id]);
        if ($stmt->fetchColumn() > 0) {
            return ['success' => false, 'message' => 'Cannot delete: this user is assigned as adviser to one or more sections. Remove the adviser assignment first.'];
        }

        // Check if user has registrations
        $stmt = $db->prepare("SELECT COUNT(*) FROM registrations WHERE user_id = ?");
        $stmt->execute([$id]);
        if ($stmt->fetchColumn() > 0) {
            return ['success' => false, 'message' => 'Cannot delete: this user has existing registrations.'];
        }

        $stmt = $db->prepare("DELETE FROM users WHERE user_id = ?");
        $ok = $stmt->execute([$id]);
        return ['success' => $ok, 'message' => $ok ? 'User deleted' : 'Failed to delete user'];
    }

    public static function setStatus(int $id, string $status): bool
    {
        $db = self::getDb();
        $stmt = $db->prepare("UPDATE users SET status = ?, updated_at = CURRENT_TIMESTAMP WHERE user_id = ?");
        return $stmt->execute([$status, $id]);
    }

}
