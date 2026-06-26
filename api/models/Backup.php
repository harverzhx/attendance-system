<?php

namespace App\models;

class Backup extends Database
{
    public static function create(string $type, int $userId): ?array
    {
        $db = self::getDb();
        $filename = 'backup_' . strtolower($type) . '_' . date('Ymd_His') . '.sql';
        $backupDir = __DIR__ . '/../../backups/';

        if (!is_dir($backupDir)) {
            mkdir($backupDir, 0755, true);
        }

        // Export database to SQL file
        $filePath = $backupDir . $filename;
        $success = self::exportDatabase($filePath);

        $fileSize = $success ? self::formatFileSize(filesize($filePath)) : '0 B';
        $status = $success ? 'Success' : 'Failed';

        $stmt = $db->prepare("
            INSERT INTO backups (filename, backup_type, file_size, created_by, status)
            VALUES (?, ?, ?, ?, ?)
            RETURNING backup_id
        ");
        $stmt->execute([$filename, $type, $fileSize, $userId, $status]);

        $backupId = $stmt->fetchColumn();

        return [
            'backup_id' => $backupId,
            'filename' => $filename,
            'type' => $type,
            'file_size' => $fileSize,
            'status' => $status,
        ];
    }

    public static function getAll(): array
    {
        $db = self::getDb();
        $stmt = $db->query("
            SELECT b.*, u.first_name || ' ' || u.last_name as created_by_name
            FROM backups b
            LEFT JOIN users u ON b.created_by = u.user_id
            ORDER BY b.created_at DESC
        ");
        return $stmt->fetchAll();
    }

    public static function download(int $id): void
    {
        $db = self::getDb();
        $stmt = $db->prepare("SELECT * FROM backups WHERE backup_id = ?");
        $stmt->execute([$id]);
        $backup = $stmt->fetch();

        if (!$backup) {
            http_response_code(404);
            echo json_encode(['error' => 'Backup not found']);
            return;
        }

        $filePath = __DIR__ . '/../../backups/' . $backup['filename'];
        if (!file_exists($filePath)) {
            http_response_code(404);
            echo json_encode(['error' => 'Backup file not found']);
            return;
        }

        header('Content-Type: application/sql');
        header('Content-Disposition: attachment; filename="' . $backup['filename'] . '"');
        header('Content-Length: ' . filesize($filePath));
        readfile($filePath);
    }

    public static function restore(int $id): bool
    {
        $db = self::getDb();
        $stmt = $db->prepare("SELECT * FROM backups WHERE backup_id = ?");
        $stmt->execute([$id]);
        $backup = $stmt->fetch();

        if (!$backup) return false;

        $filePath = __DIR__ . '/../../backups/' . $backup['filename'];
        if (!file_exists($filePath)) return false;

        // Read and execute SQL file line by line
        $sql = file_get_contents($filePath);
        if (!$sql) return false;

        try {
            $db->exec($sql);
            return true;
        } catch (\Exception $e) {
            return false;
        }
    }

    public static function delete(int $id): bool
    {
        $db = self::getDb();
        $stmt = $db->prepare("SELECT filename FROM backups WHERE backup_id = ?");
        $stmt->execute([$id]);
        $backup = $stmt->fetch();

        if (!$backup) return false;

        $filePath = __DIR__ . '/../../backups/' . $backup['filename'];
        if (file_exists($filePath)) {
            unlink($filePath);
        }

        $stmt = $db->prepare("DELETE FROM backups WHERE backup_id = ?");
        return $stmt->execute([$id]);
    }

    private static function exportDatabase(string $filePath): bool
    {
        $db = self::getDb();
        $tables = $db->query("
            SELECT table_name FROM information_schema.tables 
            WHERE table_schema = 'public' 
            ORDER BY table_name
        ")->fetchAll(\PDO::FETCH_COLUMN);

        $sql = "-- School Gate Attendance Backup\n";
        $sql .= "-- Generated: " . date('Y-m-d H:i:s') . "\n\n";

        foreach ($tables as $table) {
            $stmt = $db->query("SELECT * FROM $table");
            $rows = $stmt->fetchAll(\PDO::FETCH_ASSOC);
            $columns = !empty($rows) ? array_keys($rows[0]) : [];

            $sql .= "-- Table: $table\n";
            $sql .= "DELETE FROM $table;\n";

            foreach ($rows as $row) {
                $values = array_map(function($val) use ($db) {
                    if ($val === null) return 'NULL';
                    return $db->quote($val);
                }, array_values($row));

                $sql .= "INSERT INTO $table (" . implode(', ', $columns) . ") VALUES (" . implode(', ', $values) . ");\n";
            }
            $sql .= "\n";
        }

        return file_put_contents($filePath, $sql) !== false;
    }

    private static function formatFileSize(int $bytes): string
    {
        $units = ['B', 'KB', 'MB', 'GB'];
        $i = 0;
        while ($bytes >= 1024 && $i < count($units) - 1) {
            $bytes /= 1024;
            $i++;
        }
        return round($bytes, 2) . ' ' . $units[$i];
    }
}
