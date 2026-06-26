<?php

namespace App\models;

class EmailLog extends Database
{
    public static function getAll(): array
    {
        $db = self::getDb();
        $stmt = $db->query("
            SELECT el.*, s.first_name || ' ' || s.last_name as student_name
            FROM email_logs el
            JOIN students s ON el.student_id = s.student_id
            ORDER BY el.created_at DESC LIMIT 100
        ");
        return $stmt->fetchAll();
    }

    public static function send(int $logId): bool
    {
        $db = self::getDb();
        $stmt = $db->prepare("SELECT * FROM email_logs WHERE email_log_id = ?");
        $stmt->execute([$logId]);
        $log = $stmt->fetch();

        if (!$log) return false;

        // Load SMTP settings
        $settings = \App\models\SystemSettings::getAll();
        $host = $settings['smtp_host'] ?? '';
        $port = (int)($settings['smtp_port'] ?? 587);
        $username = $settings['smtp_username'] ?? '';
        $password = $settings['smtp_password'] ?? '';
        $fromEmail = $settings['smtp_from_email'] ?? ($username ?: 'noreply@school.edu');
        $fromName = $settings['school_name'] ?? 'School Gate Attendance';

        // If no SMTP configured, mark as failed
        if (empty($host) || empty($username) || empty($password)) {
            $stmt = $db->prepare("UPDATE email_logs SET send_status = 'Failed', sent_at = CURRENT_TIMESTAMP WHERE email_log_id = ?");
            $stmt->execute([$logId]);
            return false;
        }

        try {
            $mail = new \PHPMailer\PHPMailer\PHPMailer(true);
            $mail->isSMTP();
            $mail->Host = $host;
            $mail->SMTPAuth = true;
            $mail->Username = $username;
            $mail->Password = $password;
            $mail->Port = $port;
            $mail->SMTPSecure = $port === 465 ? \PHPMailer\PHPMailer\PHPMailer::ENCRYPTION_SMTPS : \PHPMailer\PHPMailer\PHPMailer::ENCRYPTION_STARTTLS;
            $mail->setFrom($fromEmail, $fromName);
            $mail->addAddress($log['parent_email']);
            $mail->Subject = $log['subject'];
            $mail->Body = $log['message'];
            $mail->isHTML(true);

            // Embed logo if CID reference exists in the message
            if (strpos($log['message'], 'cid:logo_img') !== false) {
                $logoPath = __DIR__ . '/../../public/img/LogoINSH.png';
                if (file_exists($logoPath)) {
                    $mail->addEmbeddedImage($logoPath, 'logo_img', 'LogoINSH.png');
                }
            }

            $mail->send();

            $stmt = $db->prepare("UPDATE email_logs SET send_status = 'Sent', sent_at = CURRENT_TIMESTAMP WHERE email_log_id = ?");
            $stmt->execute([$logId]);
            return true;
        } catch (\Exception $e) {
            $stmt = $db->prepare("UPDATE email_logs SET send_status = 'Failed', sent_at = CURRENT_TIMESTAMP WHERE email_log_id = ?");
            $stmt->execute([$logId]);
            return false;
        }
    }

    public static function resend(int $logId): bool
    {
        $db = self::getDb();
        $stmt = $db->prepare("UPDATE email_logs SET send_status = 'Pending', sent_at = NULL WHERE email_log_id = ?");
        $stmt->execute([$logId]);
        return self::send($logId);
    }
}
