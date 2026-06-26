<?php

namespace App\middleware;

use App\config\Database;
use App\helpers\Response;
use App\models\AuditLog;

class AuthMiddleware
{
    private string $secretKey;

    public function __construct()
    {
        $secret = getenv('JWT_SECRET');
        if (!$secret) {
            http_response_code(500);
            echo json_encode(['error' => 'JWT_SECRET environment variable is not set!']);
            exit;
        }
        $this->secretKey = $secret;
    }

    public function login(string $username, string $password): ?array
    {
        $db = Database::getInstance()->getConnection();

        // Rate limiting: check failed attempts
        $ip = $_SERVER['REMOTE_ADDR'] ?? 'unknown';
        $this->initRateLimitTable($db);
        $stmt = $db->prepare("DELETE FROM login_attempts WHERE attempted_at < NOW() - INTERVAL '15 minutes'");
        $stmt->execute();
        $stmt = $db->prepare("SELECT COUNT(*) FROM login_attempts WHERE ip = ?");
        $stmt->execute([$ip]);
        $attempts = (int)$stmt->fetchColumn();
        if ($attempts >= 5) {
            return ['_rate_limited' => true, 'message' => 'Too many login attempts. Please try again in 15 minutes.'];
        }

        // Check users table (any status, including Inactive) - case-insensitive
        $stmt = $db->prepare("
            SELECT u.*, r.role_name 
            FROM users u 
            JOIN roles r ON u.role_id = r.role_id 
            WHERE LOWER(u.username) = LOWER(?)
        ");
        $stmt->execute([$username]);
        $user = $stmt->fetch();

        if ($user && password_verify($password, $user['password'])) {
            // Clear failed attempts on success
            $db->prepare("DELETE FROM login_attempts WHERE ip = ?")->execute([$ip]);

            // Check if user is inactive and has a pending registration
            if ($user['status'] !== 'Active' && $user['role_name'] !== 'Admin') {
                $regStmt = $db->prepare("SELECT approval_status FROM registrations WHERE user_id = ?");
                $regStmt->execute([$user['user_id']]);
                $reg = $regStmt->fetch();
                if ($reg && $reg['approval_status'] === 'Pending') {
                    return ['_pending' => true, 'message' => 'Your account is pending approval. Please wait for an administrator to approve your registration.'];
                }
                return ['_inactive' => true, 'message' => 'Your account is inactive. Contact an administrator.'];
            }

            // Active user - check registration status for non-admin
            if ($user['role_name'] !== 'Admin') {
                $regStmt = $db->prepare("SELECT approval_status FROM registrations WHERE user_id = ?");
                $regStmt->execute([$user['user_id']]);
                $reg = $regStmt->fetch();
                if ($reg && $reg['approval_status'] !== 'Approved') {
                    return ['_pending' => true, 'message' => 'Your account is pending approval. Please wait for an administrator to approve your registration.'];
                }
            }

            $token = $this->generateToken($user);
            AuditLog::log($user['user_id'], 'LOGIN', "User logged in");

            return [
                'token' => $token,
                'user' => [
                    'user_id' => $user['user_id'],
                    'username' => $user['username'],
                    'first_name' => $user['first_name'],
                    'last_name' => $user['last_name'],
                    'email' => $user['email'],
                    'role' => $user['role_name'],
                    'specialization' => $user['specialization'] ?? null,
                ],
            ];
        }

        // Check parents table - case-insensitive
        $stmt = $db->prepare("SELECT * FROM parents WHERE LOWER(username) = LOWER(?) AND status = 'Active'");
        $stmt->execute([$username]);
        $parent = $stmt->fetch();

        if ($parent && password_verify($password, $parent['password'])) {
            // Clear failed attempts on success
            $db->prepare("DELETE FROM login_attempts WHERE ip = ?")->execute([$ip]);

            $token = $this->generateToken([
                'user_id' => $parent['parent_id'],
                'username' => $parent['username'],
                'role_name' => 'Parent',
            ]);

            return [
                'token' => $token,
                'user' => [
                    'user_id' => $parent['parent_id'],
                    'username' => $parent['username'],
                    'first_name' => $parent['first_name'],
                    'last_name' => $parent['last_name'],
                    'email' => $parent['email'],
                    'role' => 'Parent',
                ],
            ];
        }

        // Log failed attempt
        $stmt = $db->prepare("INSERT INTO login_attempts (ip, username, attempted_at) VALUES (?, ?, NOW())");
        $stmt->execute([$ip, $username]);

        return null;
    }

    private function initRateLimitTable(\PDO $db): void
    {
        $driver = getenv('DB_DRIVER') ?: 'pgsql';
        if ($driver === 'mysql') {
            $db->exec("CREATE TABLE IF NOT EXISTS login_attempts (
                id INT AUTO_INCREMENT PRIMARY KEY,
                ip VARCHAR(45) NOT NULL,
                username VARCHAR(255) NOT NULL,
                attempted_at DATETIME DEFAULT CURRENT_TIMESTAMP,
                INDEX idx_ip (ip),
                INDEX idx_attempted_at (attempted_at)
            )");
        } else {
            $db->exec("CREATE TABLE IF NOT EXISTS login_attempts (
                id SERIAL PRIMARY KEY,
                ip VARCHAR(45) NOT NULL,
                username VARCHAR(255) NOT NULL,
                attempted_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
            )");
            $db->exec("CREATE INDEX IF NOT EXISTS idx_login_attempts_ip ON login_attempts(ip)");
            $db->exec("CREATE INDEX IF NOT EXISTS idx_login_attempts_attempted_at ON login_attempts(attempted_at)");
        }
    }

    public function authenticate(): ?array
    {
        $token = $this->getBearerToken();
        if (!$token) {
            Response::error('Authentication required', 401);
            exit;
        }

        $payload = $this->validateToken($token);
        if (!$payload) {
            Response::error('Invalid or expired token', 401);
            exit;
        }

        return $payload;
    }

    public function getAuthenticatedUser(): ?array
    {
        $token = $this->getBearerToken();
        if (!$token) return null;
        return $this->validateToken($token);
    }

    public function requireRole(string $role): void
    {
        $user = $this->authenticate();
        if (!$user) exit;
        if ($user['role'] !== $role && $user['role'] !== 'Admin') {
            Response::error('Forbidden: insufficient permissions', 403);
            exit;
        }
    }

    private function generateToken(array $user): string
    {
        $header = base64_encode(json_encode(['typ' => 'JWT', 'alg' => 'HS256']));
        $payload = base64_encode(json_encode([
            'user_id' => $user['user_id'],
            'username' => $user['username'],
            'role' => $user['role_name'],
            'iat' => time(),
            'exp' => time() + (60 * 60 * 8), // 8 hours
        ]));

        $signature = base64_encode(hash_hmac('sha256', "$header.$payload", $this->secretKey, true));

        return "$header.$payload.$signature";
    }

    private function validateToken(string $token): ?array
    {
        $parts = explode('.', $token);
        if (count($parts) !== 3) return null;

        [$header, $payload, $signature] = $parts;
        $expectedSignature = base64_encode(hash_hmac('sha256', "$header.$payload", $this->secretKey, true));

        if (!hash_equals($expectedSignature, $signature)) return null;

        $data = json_decode(base64_decode($payload), true);
        if (!$data || $data['exp'] < time()) return null;

        return $data;
    }

    private function getBearerToken(): ?string
    {
        $headers = getallheaders();
        $authHeader = $headers['Authorization'] ?? $headers['authorization'] ?? '';

        if (preg_match('/Bearer\s(\S+)/', $authHeader, $matches)) {
            return $matches[1];
        }

        return null;
    }
}
