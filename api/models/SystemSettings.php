<?php

namespace App\models;

class SystemSettings extends Database
{
    public static function getAll(): array
    {
        $db = self::getDb();
        $stmt = $db->query("SELECT * FROM system_settings LIMIT 1");
        return $stmt->fetch() ?: [];
    }

    public static function update(array $data): bool
    {
        $db = self::getDb();
        $fields = [];
        $params = [];

        $allowedFields = [
            'school_name', 'school_address', 'school_year',
            'registration_enabled', 'email_notification_enabled',
            'school_start_time', 'grace_period_minutes',
            'smtp_host', 'smtp_port', 'smtp_username', 'smtp_password', 'smtp_from_email',
            'barcode_prefix',
        ];

        foreach ($allowedFields as $field) {
            if (isset($data[$field])) {
                $fields[] = "$field = ?";
                if (is_bool($data[$field])) {
                    $params[] = $data[$field] ? 't' : 'f';
                } else {
                    $params[] = $data[$field];
                }
            }
        }

        if (empty($fields)) return false;

        $fields[] = "updated_at = CURRENT_TIMESTAMP";
        $sql = "UPDATE system_settings SET " . implode(', ', $fields);
        $stmt = $db->prepare($sql);
        return $stmt->execute($params);
    }
}
