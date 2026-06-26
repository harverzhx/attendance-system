<?php
/**
 * Database Migration Script
 * Run: php migrate.php
 * Or on Railway: railway run php migrate.php
 */

require_once __DIR__ . '/vendor/autoload.php';

use App\config\Database;

echo "Running database migration...\n";

try {
    $db = Database::getInstance()->getConnection();

    $schema = file_get_contents(__DIR__ . '/schema.sql');
    if ($schema === false) {
        throw new RuntimeException('Failed to read schema.sql');
    }

    // Remove SET commands that cause issues
    $schema = preg_replace('/^SET .*$/m', '', $schema);
    $schema = preg_replace('/^CREATE SCHEMA .*$/m', '', $schema);

    // Execute each statement separately
    $statements = array_filter(
        array_map('trim', explode(';', $schema)),
        fn($s) => !empty($s)
    );

    $count = 0;
    foreach ($statements as $stmt) {
        try {
            $db->exec($stmt);
            $count++;
        } catch (\PDOException $e) {
            // Skip "already exists" errors for tables, indexes, and seed data
            $msg = $e->getMessage();
            if (str_contains($msg, 'already exists')) {
                echo "  [SKIP] (already exists)\n";
                continue;
            }
            throw $e;
        }
    }

    echo "Migration complete! Executed $count statements.\n";

    // Create default admin user if none exists
    $stmt = $db->query("SELECT COUNT(*) FROM school_gate.users");
    if ((int)$stmt->fetchColumn() === 0) {
        echo "Creating default admin user...\n";
        $password = password_hash('admin123', PASSWORD_DEFAULT);
        $db->prepare("INSERT INTO school_gate.users (employee_id, first_name, last_name, email, username, password, role_id, status)
            VALUES ('ADMIN-001', 'System', 'Admin', 'admin@school.edu', 'admin', ?, 1, 'Active')")->execute([$password]);
        echo "Default admin created: username=admin, password=admin123\n";
    }

} catch (Throwable $e) {
    echo "Migration failed: " . $e->getMessage() . "\n";
    exit(1);
}
