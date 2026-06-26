<?php

namespace App\config;

class Database
{
    private static ?Database $instance = null;
    private \PDO $pdo;

    private function __construct()
    {
        $host = getenv('DB_HOST') ?: getenv('PGHOST') ?: 'localhost';
        $port = getenv('DB_PORT') ?: getenv('PGPORT') ?: '8080';
        $dbname = getenv('DB_NAME') ?: getenv('PGDATABASE') ?: 'school_gate_attendance';
        $user = getenv('DB_USER') ?: getenv('PGUSER') ?: 'postgres';
        $pass = getenv('DB_PASS') ?: getenv('PGPASSWORD') ?: '212005';
        $driver = getenv('DB_DRIVER') ?: 'pgsql';

        if ($driver === 'mysql') {
            $dsn = "mysql:host=$host;port=$port;dbname=$dbname;charset=utf8mb4";
        } else {
            $dsn = "pgsql:host=$host;port=$port;dbname=$dbname";
        }

        $this->pdo = new \PDO($dsn, $user, $pass, [
            \PDO::ATTR_ERRMODE => \PDO::ERRMODE_EXCEPTION,
            \PDO::ATTR_DEFAULT_FETCH_MODE => \PDO::FETCH_ASSOC,
            \PDO::ATTR_EMULATE_PREPARES => false,
        ]);

        if ($driver === 'pgsql') {
            $this->pdo->exec('SET search_path TO school_gate');
            $this->pdo->exec("SET TIMEZONE TO 'Asia/Manila'");
        }
    }

    public static function getInstance(): self
    {
        if (self::$instance === null) {
            self::$instance = new self();
        }
        return self::$instance;
    }

    public function getConnection(): \PDO
    {
        return $this->pdo;
    }
}
