<?php

namespace App\models;

class AuditLog extends Database
{
    public static function log(int $userId, string $action, string $description): void
    {
        $ip = $_SERVER['REMOTE_ADDR'] ?? '127.0.0.1';
        $db = self::getDb();
        $stmt = $db->prepare("
            INSERT INTO audit_logs (user_id, action, description, ip_address) 
            VALUES (?, ?, ?, ?)
        ");
        $stmt->execute([$userId, $action, $description, $ip]);
    }

    public static function getAll(array $filters = []): array
    {
        $db = self::getDb();
        $sql = "SELECT al.*, u.first_name || ' ' || u.last_name as full_name 
                FROM audit_logs al 
                LEFT JOIN users u ON al.user_id = u.user_id 
                WHERE 1=1";
        $params = [];

        if (!empty($filters['user_id'])) {
            $sql .= " AND al.user_id = ?";
            $params[] = $filters['user_id'];
        }
        if (!empty($filters['action'])) {
            $sql .= " AND al.action ILIKE ?";
            $params[] = "%{$filters['action']}%";
        }
        if (!empty($filters['date_from'])) {
            $sql .= " AND al.created_at >= ?";
            $params[] = $filters['date_from'];
        }
        if (!empty($filters['date_to'])) {
            $sql .= " AND al.created_at <= ?";
            $params[] = $filters['date_to'] . ' 23:59:59';
        }

        $sql .= " ORDER BY al.created_at DESC LIMIT 100";
        $stmt = $db->prepare($sql);
        $stmt->execute($params);
        return $stmt->fetchAll();
    }

    public static function getById(int $id): ?array
    {
        $db = self::getDb();
        $stmt = $db->prepare("
            SELECT al.*, u.first_name || ' ' || u.last_name as full_name 
            FROM audit_logs al 
            LEFT JOIN users u ON al.user_id = u.user_id 
            WHERE al.audit_id = ?
        ");
        $stmt->execute([$id]);
        return $stmt->fetch() ?: null;
    }
}
