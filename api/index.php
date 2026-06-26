<?php
date_default_timezone_set('Asia/Manila');

require_once __DIR__ . '/../vendor/autoload.php';

use flight\Engine;
use App\config\Database;
use App\middleware\AuthMiddleware;
use App\helpers\Response;
use App\models\User;
use App\models\Student;
use App\models\ParentModel;
use App\models\Section;
use App\models\Attendance;
use App\models\AuditLog;
use App\models\EmailLog;
use App\models\Registration;
use App\models\Backup;
use App\models\SystemSettings;

$app = new Engine();

// CORS headers
$app->start(function() {
    $allowedOrigin = getenv('CORS_ORIGIN') ?: getenv('RAILWAY_STATIC_URL') ?: 'http://localhost:8000';
    header("Access-Control-Allow-Origin: $allowedOrigin");
    header('Access-Control-Allow-Methods: GET, POST, PUT, DELETE, OPTIONS');
    header('Access-Control-Allow-Headers: Content-Type, Authorization');
    if ($_SERVER['REQUEST_METHOD'] === 'OPTIONS') {
        http_response_code(200);
        exit();
    }
});

$auth = new AuthMiddleware();

// ─────────────────── AUTH ROUTES ───────────────────

$app->route('POST /auth/login', function() use ($app, $auth) {
    $data = json_decode($app->request()->getBody(), true);
    if (!$data || empty($data['username']) || empty($data['password'])) {
        Response::error('Username and password are required', 400);
        return;
    }
    $result = $auth->login($data['username'], $data['password']);
    if ($result) {
        if (isset($result['_rate_limited'])) {
            Response::error($result['message'], 429);
        } elseif (isset($result['_pending']) || isset($result['_inactive'])) {
            Response::error($result['message'], 401);
        } else {
            Response::json($result);
        }
    } else {
        Response::error('Invalid credentials', 401);
    }
});

$app->route('POST /auth/logout', function() use ($app, $auth) {
    $user = $auth->getAuthenticatedUser();
    if ($user) {
        AuditLog::log($user['user_id'], 'LOGOUT', 'User logged out');
    }
    Response::json(['message' => 'Logged out successfully']);
});

$app->route('GET /auth/me', function() use ($app, $auth) {
    $user = $auth->getAuthenticatedUser();
    if (!$user) {
        Response::error('Unauthorized', 401);
        return;
    }
    Response::json($user);
});

// ─────────────────── REGISTRATION ROUTES ───────────────────

$app->route('POST /registrations', function() use ($app) {
    $data = json_decode($app->request()->getBody(), true);
    $result = Registration::create($data);
    if ($result) {
        Response::json(['message' => 'Registration submitted for approval', 'registration_id' => $result], 201);
    } else {
        Response::error('Registration failed', 400);
    }
});

$app->route('GET /registrations', function() use ($app, $auth) {
    $auth->requireRole('Admin');
    $status = $app->request()->query['status'] ?? null;
    Response::json(Registration::getAll($status));
});

$app->route('PUT /registrations/@id/approve', function($id) use ($app, $auth) {
    $auth->requireRole('Admin');
    $user = $auth->getAuthenticatedUser();
    if (Registration::approve($id, $user['user_id'])) {
        AuditLog::log($user['user_id'], 'APPROVE', "Registration #$id approved");
        Response::json(['message' => 'Registration approved']);
    } else {
        Response::error('Failed to approve registration', 400);
    }
});

$app->route('PUT /registrations/@id/reject', function($id) use ($app, $auth) {
    $auth->requireRole('Admin');
    $user = $auth->getAuthenticatedUser();
    if (Registration::reject($id, $user['user_id'])) {
        AuditLog::log($user['user_id'], 'REJECT', "Registration #$id rejected");
        Response::json(['message' => 'Registration rejected']);
    } else {
        Response::error('Failed to reject registration', 400);
    }
});

// ─────────────────── USER ROUTES ───────────────────

$app->route('GET /users', function() use ($app, $auth) {
    $auth->requireRole('Admin');
    Response::json(User::getAll());
});

$app->route('GET /users/@id', function($id) use ($app, $auth) {
    $auth->requireRole('Admin');
    $user = User::getById($id);
    if ($user) {
        Response::json($user);
    } else {
        Response::error('User not found', 404);
    }
});

$app->route('POST /users', function() use ($app, $auth) {
    $auth->requireRole('Admin');
    $data = json_decode($app->request()->getBody(), true);
    $userId = User::create($data);
    if ($userId) {
        $user = $auth->getAuthenticatedUser();
        AuditLog::log($user['user_id'], 'CREATE', "Created user #$userId");
        Response::json(['message' => 'User created', 'user_id' => $userId], 201);
    } else {
        Response::error('Failed to create user', 400);
    }
});

$app->route('PUT /users/@id', function($id) use ($app, $auth) {
    $auth->requireRole('Admin');
    $data = json_decode($app->request()->getBody(), true);
    if (User::update($id, $data)) {
        $user = $auth->getAuthenticatedUser();
        AuditLog::log($user['user_id'], 'UPDATE', "Updated user #$id");
        Response::json(['message' => 'User updated']);
    } else {
        Response::error('Failed to update user', 400);
    }
});

$app->route('DELETE /users/@id', function($id) use ($app, $auth) {
    $auth->requireRole('Admin');
    $result = User::delete($id);
    if ($result['success']) {
        $user = $auth->getAuthenticatedUser();
        AuditLog::log($user['user_id'], 'DELETE', "Deleted user #$id");
        Response::json(['message' => $result['message']]);
    } else {
        Response::error($result['message'], 400);
    }
});

$app->route('PUT /users/@id/activate', function($id) use ($app, $auth) {
    $auth->requireRole('Admin');
    if (User::setStatus($id, 'Active')) {
        $user = $auth->getAuthenticatedUser();
        AuditLog::log($user['user_id'], 'UPDATE', "Activated user #$id");
        Response::json(['message' => 'User activated']);
    } else {
        Response::error('Failed to activate user', 400);
    }
});

$app->route('PUT /users/@id/deactivate', function($id) use ($app, $auth) {
    $auth->requireRole('Admin');
    if (User::setStatus($id, 'Inactive')) {
        $user = $auth->getAuthenticatedUser();
        AuditLog::log($user['user_id'], 'UPDATE', "Deactivated user #$id");
        Response::json(['message' => 'User deactivated']);
    } else {
        Response::error('Failed to deactivate user', 400);
    }
});

// ─────────────────── SECTION ROUTES ───────────────────

$app->route('GET /sections', function() use ($app, $auth) {
    $auth->authenticate();
    Response::json(Section::getAll());
});

$app->route('GET /sections/@id', function($id) use ($app, $auth) {
    $auth->authenticate();
    $section = Section::getById($id);
    if ($section) {
        Response::json($section);
    } else {
        Response::error('Section not found', 404);
    }
});

$app->route('POST /sections', function() use ($app, $auth) {
    $auth->requireRole('Admin');
    $data = json_decode($app->request()->getBody(), true);
    $sectionId = Section::create($data);
    if ($sectionId) {
        $user = $auth->getAuthenticatedUser();
        AuditLog::log($user['user_id'], 'CREATE', "Created section #$sectionId");
        Response::json(['message' => 'Section created', 'section_id' => $sectionId], 201);
    } else {
        Response::error('Failed to create section', 400);
    }
});

$app->route('PUT /sections/@id', function($id) use ($app, $auth) {
    $auth->requireRole('Admin');
    $data = json_decode($app->request()->getBody(), true);
    if (Section::update($id, $data)) {
        $user = $auth->getAuthenticatedUser();
        AuditLog::log($user['user_id'], 'UPDATE', "Updated section #$id");
        Response::json(['message' => 'Section updated']);
    } else {
        Response::error('Failed to update section', 400);
    }
});

$app->route('DELETE /sections/@id', function($id) use ($app, $auth) {
    $auth->requireRole('Admin');
    if (Section::delete($id)) {
        $user = $auth->getAuthenticatedUser();
        AuditLog::log($user['user_id'], 'DELETE', "Deleted section #$id");
        Response::json(['message' => 'Section deleted']);
    } else {
        Response::error('Failed to delete section', 400);
    }
});

$app->route('PUT /sections/@id/assign-adviser', function($id) use ($app, $auth) {
    $auth->requireRole('Admin');
    $data = json_decode($app->request()->getBody(), true);
    if (Section::assignAdviser($id, $data['adviser_id'])) {
        $user = $auth->getAuthenticatedUser();
        AuditLog::log($user['user_id'], 'UPDATE', "Assigned adviser to section #$id");
        Response::json(['message' => 'Adviser assigned']);
    } else {
        Response::error('Failed to assign adviser', 400);
    }
});

$app->route('GET /sections/@id/students', function($id) use ($app, $auth) {
    $auth->authenticate();
    Response::json(Student::getBySection($id));
});

// ─────────────────── PARENT ROUTES BEFORE STUDENTS ───────────────────

$app->route('GET /parents', function() use ($app, $auth) {
    $auth->requireRole('Admin');
    Response::json(ParentModel::getAll());
});

$app->route('GET /parents/@id', function($id) use ($app, $auth) {
    $auth->requireRole('Admin');
    $parent = ParentModel::getById($id);
    if ($parent) {
        Response::json($parent);
    } else {
        Response::error('Parent not found', 404);
    }
});

$app->route('POST /parents', function() use ($app, $auth) {
    $auth->requireRole('Admin');
    $data = json_decode($app->request()->getBody(), true);
    $parentId = ParentModel::create($data);
    if ($parentId) {
        $user = $auth->getAuthenticatedUser();
        AuditLog::log($user['user_id'], 'CREATE', "Created parent #$parentId");
        Response::json(['message' => 'Parent created', 'parent_id' => $parentId], 201);
    } else {
        Response::error('Failed to create parent', 400);
    }
});

$app->route('PUT /parents/@id', function($id) use ($app, $auth) {
    $auth->requireRole('Admin');
    $data = json_decode($app->request()->getBody(), true);
    if (ParentModel::update($id, $data)) {
        $user = $auth->getAuthenticatedUser();
        AuditLog::log($user['user_id'], 'UPDATE', "Updated parent #$id");
        Response::json(['message' => 'Parent updated']);
    } else {
        Response::error('Failed to update parent', 400);
    }
});

$app->route('DELETE /parents/@id', function($id) use ($app, $auth) {
    $auth->requireRole('Admin');
    if (ParentModel::delete($id)) {
        $user = $auth->getAuthenticatedUser();
        AuditLog::log($user['user_id'], 'DELETE', "Deleted parent #$id");
        Response::json(['message' => 'Parent deleted']);
    } else {
        Response::error('Failed to delete parent', 400);
    }
});

// ─────────────────── STUDENT ROUTES ───────────────────

$app->route('GET /students', function() use ($app, $auth) {
    $auth->authenticate();
    $filters = [
        'section_id' => $app->request()->query['section_id'] ?? null,
        'status' => $app->request()->query['status'] ?? null,
        'grade_level' => $app->request()->query['grade_level'] ?? null,
        'search' => $app->request()->query['search'] ?? null,
    ];
    Response::json(Student::getAll($filters));
});

$app->route('GET /students/@id', function($id) use ($app, $auth) {
    $auth->authenticate();
    $student = Student::getById($id);
    if ($student) {
        Response::json($student);
    } else {
        Response::error('Student not found', 404);
    }
});

$app->route('POST /students', function() use ($app, $auth) {
    $auth->requireRole('Admin');
    $data = json_decode($app->request()->getBody(), true);
    $studentId = Student::create($data);
    if ($studentId) {
        $user = $auth->getAuthenticatedUser();
        AuditLog::log($user['user_id'], 'CREATE', "Created student #$studentId");
        Response::json(['message' => 'Student created', 'student_id' => $studentId], 201);
    } else {
        Response::error('Failed to create student', 400);
    }
});

$app->route('PUT /students/@id', function($id) use ($app, $auth) {
    $auth->requireRole('Admin');
    $data = json_decode($app->request()->getBody(), true);
    if (Student::update($id, $data)) {
        $user = $auth->getAuthenticatedUser();
        AuditLog::log($user['user_id'], 'UPDATE', "Updated student #$id");
        Response::json(['message' => 'Student updated']);
    } else {
        Response::error('Failed to update student', 400);
    }
});

$app->route('DELETE /students/@id', function($id) use ($app, $auth) {
    $auth->requireRole('Admin');
    if (Student::delete($id)) {
        $user = $auth->getAuthenticatedUser();
        AuditLog::log($user['user_id'], 'DELETE', "Deleted student #$id");
        Response::json(['message' => 'Student deleted']);
    } else {
        Response::error('Failed to delete student', 400);
    }
});

$app->route('POST /students/@id/generate-qr', function($id) use ($app, $auth) {
    $auth->requireRole('Admin');
    $qrCode = Student::generateQRCode($id);
    if ($qrCode) {
        $user = $auth->getAuthenticatedUser();
        AuditLog::log($user['user_id'], 'GENERATE_QR', "Generated QR for student #$id");
        Response::json(['qr_code' => $qrCode]);
    } else {
        Response::error('Failed to generate QR code', 400);
    }
});

$app->route('POST /students/@id/generate-barcode', function($id) use ($app, $auth) {
    $auth->requireRole('Admin');
    $barcode = Student::generateBarcode($id);
    if ($barcode) {
        $user = $auth->getAuthenticatedUser();
        AuditLog::log($user['user_id'], 'GENERATE_BARCODE', "Generated barcode for student #$id");
        Response::json(['barcode' => $barcode]);
    } else {
        Response::error('Failed to generate barcode', 400);
    }
});

// ─────────────────── ATTENDANCE ROUTES ───────────────────

$app->route('POST /attendance/scan', function() use ($app, $auth) {
    $auth->authenticate();
    $data = json_decode($app->request()->getBody(), true);
    if (!$data || (empty($data['barcode']) && empty($data['qr_code']))) {
        Response::error('Barcode or QR code is required', 400);
        return;
    }
    $result = Attendance::scan($data);
    if ($result) {
        $user = $auth->getAuthenticatedUser();
        AuditLog::log($user['user_id'], 'TIME_IN', "Attendance recorded for student: {$result['student']}");
        Response::json($result, 201);
    } else {
        Response::error('Failed to record attendance', 400);
    }
});

$app->route('GET /attendance', function() use ($app, $auth) {
    $auth->authenticate();
    $filters = [
        'date' => $app->request()->query['date'] ?? null,
        'student_id' => $app->request()->query['student_id'] ?? null,
        'section_id' => $app->request()->query['section_id'] ?? null,
        'status' => $app->request()->query['status'] ?? null,
    ];
    Response::json(Attendance::getAll($filters));
});

$app->route('GET /attendance/@id', function($id) use ($app, $auth) {
    $auth->authenticate();
    $record = Attendance::getById($id);
    if ($record) {
        Response::json($record);
    } else {
        Response::error('Attendance record not found', 404);
    }
});

$app->route('PUT /attendance/@id', function($id) use ($app, $auth) {
    $auth->requireRole('Admin');
    $data = json_decode($app->request()->getBody(), true);
    if (Attendance::update($id, $data)) {
        $user = $auth->getAuthenticatedUser();
        AuditLog::log($user['user_id'], 'UPDATE', "Updated attendance #$id");
        Response::json(['message' => 'Attendance updated']);
    } else {
        Response::error('Failed to update attendance', 400);
    }
});

$app->route('DELETE /attendance/@id', function($id) use ($app, $auth) {
    $auth->requireRole('Admin');
    if (Attendance::delete($id)) {
        $user = $auth->getAuthenticatedUser();
        AuditLog::log($user['user_id'], 'DELETE', "Deleted attendance #$id");
        Response::json(['message' => 'Attendance deleted']);
    } else {
        Response::error('Failed to delete attendance', 400);
    }
});

// ─────────────────── ADVISER ROUTES ───────────────────

$app->route('GET /adviser/dashboard', function() use ($app, $auth) {
    $auth->requireRole('Adviser');
    $user = $auth->getAuthenticatedUser();
    Response::json(Attendance::getAdviserDashboard($user['user_id']));
});

$app->route('GET /adviser/attendance', function() use ($app, $auth) {
    $auth->requireRole('Adviser');
    $user = $auth->getAuthenticatedUser();
    $date = $app->request()->query['date'] ?? date('Y-m-d');
    $sectionId = $app->request()->query['section_id'] ?? null;
    Response::json(Attendance::getAdviserAttendance($user['user_id'], $date, $sectionId));
});

$app->route('GET /adviser/reports', function() use ($app, $auth) {
    $auth->requireRole('Adviser');
    $user = $auth->getAuthenticatedUser();
    $sectionId = $app->request()->query['section_id'] ?? null;
    $dateFrom = $app->request()->query['date_from'] ?? date('Y-m-d', strtotime('-30 days'));
    $dateTo = $app->request()->query['date_to'] ?? date('Y-m-d');
    Response::json(Attendance::getAdviserReport($user['user_id'], $sectionId, $dateFrom, $dateTo));
});

// ─────────────────── PARENT PORTAL ROUTES ───────────────────

$app->route('GET /parent/dashboard', function() use ($app, $auth) {
    $auth->requireRole('Parent');
    $user = $auth->getAuthenticatedUser();
    $parent = ParentModel::getByUsername($user['username']);
    Response::json(ParentModel::getDashboard($parent['parent_id']));
});

$app->route('GET /parent/attendance', function() use ($app, $auth) {
    $auth->requireRole('Parent');
    $user = $auth->getAuthenticatedUser();
    $parent = ParentModel::getByUsername($user['username']);
    $dateFrom = $app->request()->query['date_from'] ?? null;
    $dateTo = $app->request()->query['date_to'] ?? null;
    Response::json(ParentModel::getChildrenAttendance($parent['parent_id'], $dateFrom, $dateTo));
});

$app->route('GET /parent/notifications', function() use ($app, $auth) {
    $auth->requireRole('Parent');
    $user = $auth->getAuthenticatedUser();
    $parent = ParentModel::getByUsername($user['username']);
    Response::json(ParentModel::getNotifications($parent['parent_id']));
});

$app->route('GET /parent/student', function() use ($app, $auth) {
    $auth->requireRole('Parent');
    $user = $auth->getAuthenticatedUser();
    $parent = ParentModel::getByUsername($user['username']);
    Response::json(ParentModel::getChildren($parent['parent_id']));
});

// ─────────────────── REPORTS ROUTES ───────────────────

$app->route('GET /reports/daily', function() use ($app, $auth) {
    $auth->authenticate();
    $date = $app->request()->query['date'] ?? date('Y-m-d');
    Response::json(Attendance::getDailyReport($date));
});

$app->route('GET /reports/monthly', function() use ($app, $auth) {
    $auth->authenticate();
    $year = $app->request()->query['year'] ?? date('Y');
    $month = $app->request()->query['month'] ?? date('m');
    Response::json(Attendance::getMonthlyReport($year, $month));
});

$app->route('GET /reports/student/@student_id', function($studentId) use ($app, $auth) {
    $auth->authenticate();
    $dateFrom = $app->request()->query['date_from'] ?? date('Y-m-d', strtotime('-30 days'));
    $dateTo = $app->request()->query['date_to'] ?? date('Y-m-d');
    Response::json(Attendance::getStudentReport($studentId, $dateFrom, $dateTo));
});

$app->route('GET /reports/section/@section_id', function($sectionId) use ($app, $auth) {
    $auth->authenticate();
    $dateFrom = $app->request()->query['date_from'] ?? date('Y-m-d', strtotime('-30 days'));
    $dateTo = $app->request()->query['date_to'] ?? date('Y-m-d');
    Response::json(Attendance::getSectionReport($sectionId, $dateFrom, $dateTo));
});

$app->route('GET /reports/late', function() use ($app, $auth) {
    $auth->authenticate();
    $dateFrom = $app->request()->query['date_from'] ?? date('Y-m-d', strtotime('-7 days'));
    $dateTo = $app->request()->query['date_to'] ?? date('Y-m-d');
    Response::json(Attendance::getLateReport($dateFrom, $dateTo));
});

$app->route('GET /reports/absent', function() use ($app, $auth) {
    $auth->authenticate();
    $dateFrom = $app->request()->query['date_from'] ?? date('Y-m-d', strtotime('-7 days'));
    $dateTo = $app->request()->query['date_to'] ?? date('Y-m-d');
    Response::json(Attendance::getAbsentReport($dateFrom, $dateTo));
});

$app->route('GET /reports/export/pdf', function() use ($app, $auth) {
    $auth->authenticate();
    $type = $app->request()->query['type'] ?? 'daily';
    $date = $app->request()->query['date'] ?? date('Y-m-d');
    $user = $auth->getAuthenticatedUser();
    AuditLog::log($user['user_id'], 'EXPORT_PDF', "Exported $type report to PDF");
    Attendance::exportPDF($type, $date);
});

$app->route('GET /reports/export/excel', function() use ($app, $auth) {
    $auth->authenticate();
    $type = $app->request()->query['type'] ?? 'daily';
    $date = $app->request()->query['date'] ?? date('Y-m-d');
    $user = $auth->getAuthenticatedUser();
    AuditLog::log($user['user_id'], 'EXPORT_EXCEL', "Exported $type report to Excel");
    Attendance::exportExcel($type, $date);
});

// ─────────────────── EMAIL LOGS ROUTES ───────────────────

$app->route('GET /email-logs', function() use ($app, $auth) {
    $auth->requireRole('Admin');
    Response::json(EmailLog::getAll());
});

$app->route('POST /email-logs/@id/resend', function($id) use ($app, $auth) {
    $auth->requireRole('Admin');
    if (EmailLog::resend($id)) {
        $user = $auth->getAuthenticatedUser();
        AuditLog::log($user['user_id'], 'SEND_EMAIL', "Resent email #$id");
        Response::json(['message' => 'Email resent']);
    } else {
        Response::error('Failed to resend email', 400);
    }
});

// ─────────────────── AUDIT LOGS ROUTES ───────────────────

$app->route('GET /audit-logs', function() use ($app, $auth) {
    $auth->requireRole('Admin');
    $filters = [
        'user_id' => $app->request()->query['user_id'] ?? null,
        'action' => $app->request()->query['action'] ?? null,
        'date_from' => $app->request()->query['date_from'] ?? null,
        'date_to' => $app->request()->query['date_to'] ?? null,
    ];
    Response::json(AuditLog::getAll($filters));
});

$app->route('GET /audit-logs/@id', function($id) use ($app, $auth) {
    $auth->requireRole('Admin');
    $log = AuditLog::getById($id);
    if ($log) {
        Response::json($log);
    } else {
        Response::error('Audit log not found', 404);
    }
});

// ─────────────────── SETTINGS ROUTES ───────────────────

$app->route('GET /settings', function() use ($app, $auth) {
    $auth->requireRole('Admin');
    Response::json(SystemSettings::getAll());
});

$app->route('PUT /settings', function() use ($app, $auth) {
    $auth->requireRole('Admin');
    $data = json_decode($app->request()->getBody(), true);
    if (SystemSettings::update($data)) {
        $user = $auth->getAuthenticatedUser();
        AuditLog::log($user['user_id'], 'UPDATE', "Updated system settings");
        Response::json(['message' => 'Settings updated']);
    } else {
        Response::error('Failed to update settings', 400);
    }
});

// ─────────────────── BACKUP ROUTES ───────────────────

$app->route('POST /backups/create', function() use ($app, $auth) {
    $auth->requireRole('Admin');
    $user = $auth->getAuthenticatedUser();
    $type = json_decode($app->request()->getBody(), true)['type'] ?? 'Manual';
    $result = Backup::create($type, $user['user_id']);
    if ($result) {
        AuditLog::log($user['user_id'], 'CREATE', "Created $type backup");
        Response::json(['message' => 'Backup created', 'backup' => $result], 201);
    } else {
        Response::error('Failed to create backup', 500);
    }
});

$app->route('GET /backups', function() use ($app, $auth) {
    $auth->requireRole('Admin');
    Response::json(Backup::getAll());
});

$app->route('GET /backups/@id/download', function($id) use ($app, $auth) {
    $auth->requireRole('Admin');
    Backup::download($id);
});

$app->route('POST /backups/@id/restore', function($id) use ($app, $auth) {
    $auth->requireRole('Admin');
    $user = $auth->getAuthenticatedUser();
    if (Backup::restore($id)) {
        AuditLog::log($user['user_id'], 'RESTORE', "Restored backup #$id");
        Response::json(['message' => 'Backup restored successfully']);
    } else {
        Response::error('Failed to restore backup', 500);
    }
});

$app->route('DELETE /backups/@id', function($id) use ($app, $auth) {
    $auth->requireRole('Admin');
    if (Backup::delete($id)) {
        $user = $auth->getAuthenticatedUser();
        AuditLog::log($user['user_id'], 'DELETE', "Deleted backup #$id");
        Response::json(['message' => 'Backup deleted']);
    } else {
        Response::error('Failed to delete backup', 400);
    }
});

// ─────────────────── DASHBOARD ROUTES ───────────────────

$app->route('GET /dashboard/admin', function() use ($app, $auth) {
    $auth->requireRole('Admin');
    Response::json(Attendance::getAdminDashboard());
});

$app->route('GET /dashboard/admin-full', function() use ($app, $auth) {
    $auth->requireRole('Admin');
    Response::json(Attendance::getComprehensiveDashboard());
});

$app->route('GET /dashboard/teacher', function() use ($app, $auth) {
    $user = $auth->authenticate();
    if (!$user) return;
    Response::json(Attendance::getTeacherDashboard($user['user_id']));
});

$app->route('GET /dashboard/staff', function() use ($app, $auth) {
    $auth->requireRole('Staff');
    Response::json(Attendance::getStaffDashboard());
});

$app->route('GET /dashboard/viewer', function() use ($app, $auth) {
    $auth->requireRole('Viewer');
    Response::json(Attendance::getViewerDashboard());
});

// ─────────────────── ROLES ROUTE ───────────────────

$app->route('GET /roles', function() use ($app, $auth) {
    $auth->requireRole('Admin');
    $db = Database::getInstance()->getConnection();
    $stmt = $db->query("SELECT role_id, role_name FROM roles ORDER BY role_id");
    Response::json($stmt->fetchAll());
});

// ─────────────────── START ───────────────────

$app->start();
