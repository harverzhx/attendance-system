<?php
date_default_timezone_set('Asia/Manila');
error_reporting(E_ALL);
ini_set('display_errors', '0');
require_once __DIR__ . '/vendor/autoload.php';

use App\config\Database;
use App\middleware\AuthMiddleware;
use App\models\User;
use App\models\Student;
use App\models\ParentModel;
use App\models\Section;
use App\models\Attendance;
use App\models\AuditLog;
use App\models\EmailLog;
use App\models\ScanLog;
use App\models\Registration;
use App\models\Backup;
use App\models\SystemSettings;
use App\models\PullOut;
use App\models\Excuse;
use App\models\Subject;

$uri = $_SERVER['REQUEST_URI'];
$method = $_SERVER['REQUEST_METHOD'];
$path = parse_url($uri, PHP_URL_PATH);
$path = ltrim($path, '/');

header('Content-Type: application/json');
$allowedOrigin = getenv('CORS_ORIGIN') ?: getenv('RAILWAY_STATIC_URL') ?: 'http://localhost:8000';
header("Access-Control-Allow-Origin: $allowedOrigin");
header('Access-Control-Allow-Methods: GET, POST, PUT, DELETE, OPTIONS');
header('Access-Control-Allow-Headers: Content-Type, Authorization');

if ($method === 'OPTIONS') { http_response_code(200); exit; }

function handleError($e) {
    $msg = $e->getMessage();
    $code = $e->getCode();
    $httpCode = 400;

    // PostgreSQL duplicate key violations
    if ($e instanceof PDOException) {
        $sqlState = $e->errorInfo[0] ?? '';
        $driverCode = $e->errorInfo[1] ?? '';
        $driverMsg = $e->errorInfo[2] ?? '';

        if ($sqlState === '23505') {
            $httpCode = 409;
            if (stripos($driverMsg, 'username') !== false) $msg = 'Username already exists';
            elseif (stripos($driverMsg, 'email') !== false) $msg = 'Email already exists';
            elseif (stripos($driverMsg, 'lrn') !== false) $msg = 'LRN number already exists';
            elseif (stripos($driverMsg, 'student_number') !== false) $msg = 'Student number already exists';
            elseif (stripos($driverMsg, 'employee_id') !== false) $msg = 'Employee ID already exists';
            elseif (stripos($driverMsg, 'section_name') !== false) $msg = 'Section name already exists';
            elseif (stripos($driverMsg, 'contact_number') !== false) $msg = 'Contact number already exists';
            else $msg = 'Duplicate entry. This record already exists.';
        } elseif ($sqlState === '23502') {
            $httpCode = 400;
            $msg = 'Required field is missing: ' . $msg;
        } elseif ($sqlState === '23503') {
            $httpCode = 409;
            $msg = 'Cannot delete: this record is referenced by other records';
        } elseif ($sqlState === '42P01') {
            $httpCode = 500;
            $msg = 'Database configuration error';
        } else {
            $httpCode = 500;
        }
    } elseif ($e instanceof \InvalidArgumentException) {
        $httpCode = 400;
        $msg = $e->getMessage();
    } elseif ($e instanceof \TypeError) {
        $httpCode = 400;
        $msg = 'Invalid data type provided';
    }

    http_response_code($httpCode);
    echo json_encode(['success' => false, 'message' => $msg]);
}

try {
    $auth = new AuthMiddleware();
    $json = fn($data, $code = 200) => [http_response_code($code), print(json_encode(['success'=>true,'data'=>$data]) ?: '')];
    $err = fn($msg, $code = 400) => [http_response_code($code), print(json_encode(['success'=>false,'message'=>$msg]) ?: '')];
    $body = fn() => json_decode(file_get_contents('php://input'), true) ?: [];
    $query = fn($k, $d = null) => $_GET[$k] ?? $d;

    // ─── HELPERS (early) ───
    $adminOnly = function() use ($auth) { $u = $auth->authenticate(); if (!$u) exit; if ($u['role'] !== 'Admin') { http_response_code(403); echo json_encode(['success'=>false,'message'=>'Forbidden']); exit; } return $u; };
    $authOnly = function() use ($auth) { $u = $auth->authenticate(); if (!$u) exit; return $u; };
    $db = fn() => Database::getInstance()->getConnection();

    // ─── AUTH ───
    if ($path === 'auth/login' && $method === 'POST') {
        $d = $body();
        if (empty($d['username']) || empty($d['password'])) { $err('Username and password required'); exit; }
        $r = $auth->login($d['username'], $d['password']);
        if ($r) {
            if (isset($r['_rate_limited'])) {
                http_response_code(429);
                $json(['error' => $r['message']]);
            } elseif (isset($r['_pending']) || isset($r['_inactive'])) {
                $err($r['message'], 401);
            } else {
                $json($r);
            }
        } else {
            $err('Invalid credentials', 401);
        }
        exit;
    }
    if ($path === 'auth/me' && $method === 'GET') {
        $u = $auth->getAuthenticatedUser();
        if ($u) {
            $stmt = $db()->prepare("SELECT specialization FROM users WHERE user_id = ?");
            $stmt->execute([$u['user_id']]);
            $row = $stmt->fetch();
            if ($row) $u['specialization'] = $row['specialization'];
            $json($u);
        } else {
            $err('Unauthorized', 401);
        }
        exit;
    }
    if ($path === 'auth/registration-status' && $method === 'GET') {
        $settings = SystemSettings::getAll();
        $enabled = $settings['registration_enabled'] ?? 't';
        $json(['registration_enabled' => !($enabled === 'f' || $enabled === false)]);
        exit;
    }

    // ─── ROLES ───
    if ($path === 'roles' && $method === 'GET') { $u = $adminOnly(); $s = $db()->query("SELECT role_id, role_name FROM roles ORDER BY role_id"); $json($s->fetchAll()); exit; }

    // ─── USERS ───
    if (preg_match('#^users/(\d+)$#', $path, $m) && $method === 'GET') { $u = $adminOnly(); $json(User::getById((int)$m[1]) ?: $err('User not found', 404)); exit; }
    if ($path === 'users' && $method === 'GET') { $u = $adminOnly(); $json(User::getAll()); exit; }
    if ($path === 'users' && $method === 'POST') { $u = $adminOnly(); $d = $body(); if (empty($d['username']) || empty($d['password'])) { $err('Username and password required'); exit; } $id = User::create($d); if (!$id) { $err('Failed to create user'); exit; } AuditLog::log($u['user_id'], 'CREATE', "Created user #$id"); $json(['user_id'=>$id], 201); exit; }
    if (preg_match('#^users/(\d+)$#', $path, $m) && $method === 'PUT') { $u = $adminOnly(); User::update((int)$m[1], $body()) ? ($json(['message'=>'Updated']) && AuditLog::log($u['user_id'], 'UPDATE', "Updated user #{$m[1]}")) : $err('Failed to update user'); exit; }
    if (preg_match('#^users/(\d+)$#', $path, $m) && $method === 'DELETE') { $u = $adminOnly(); $del = User::delete((int)$m[1]); if ($del['success']) { $json(['message'=>'Deleted']); AuditLog::log($u['user_id'], 'DELETE', "Deleted user #{$m[1]}"); } else { $err($del['message']); } exit; }
    if (preg_match('#^users/(\d+)/activate$#', $path, $m) && $method === 'PUT') { $u = $adminOnly(); User::setStatus((int)$m[1], 'Active') ? ($json(['message'=>'Activated']) && AuditLog::log($u['user_id'], 'UPDATE', "Activated user #{$m[1]}")) : $err('Failed'); exit; }
    if (preg_match('#^users/(\d+)/deactivate$#', $path, $m) && $method === 'PUT') { $u = $adminOnly(); User::setStatus((int)$m[1], 'Inactive') ? ($json(['message'=>'Deactivated']) && AuditLog::log($u['user_id'], 'UPDATE', "Deactivated user #{$m[1]}")) : $err('Failed'); exit; }

    // ─── REGISTRATIONS ───
    if ($path === 'registrations' && $method === 'POST') { $d = $body(); if (empty($d['username']) || empty($d['password'])) { $err('Username and password required'); exit; } $id = Registration::create($d); $id ? $json(['registration_id'=>$id], 201) : $err('Registration failed. Possibly already registered or registration is disabled.'); exit; }
    if ($path === 'registrations' && $method === 'GET') { $u = $adminOnly(); $json(Registration::getAll($query('status'))); exit; }
    if (preg_match('#^registrations/(\d+)/approve$#', $path, $m) && $method === 'PUT') { $u = $adminOnly(); Registration::approve((int)$m[1], $u['user_id']) ? ($json(['message'=>'Approved']) && AuditLog::log($u['user_id'], 'APPROVE', "Registration #{$m[1]} approved")) : $err('Failed to approve'); exit; }
    if (preg_match('#^registrations/(\d+)/reject$#', $path, $m) && $method === 'PUT') { $u = $adminOnly(); Registration::reject((int)$m[1], $u['user_id']) ? ($json(['message'=>'Rejected']) && AuditLog::log($u['user_id'], 'REJECT', "Registration #{$m[1]} rejected")) : $err('Failed to reject'); exit; }

    // ─── SECTIONS ───
    if ($path === 'sections' && $method === 'GET') { $authOnly(); $json(Section::getAll()); exit; }
    if (preg_match('#^sections/(\d+)$#', $path, $m) && $method === 'GET') { $authOnly(); $json(Section::getById((int)$m[1]) ?: $err('Section not found', 404)); exit; }
    if ($path === 'sections' && $method === 'POST') { $u = $adminOnly(); $d = $body(); if (empty($d['section_name'])) { $err('Section name required'); exit; } $id = Section::create($d); if (!$id) { $err('Failed to create section'); exit; } AuditLog::log($u['user_id'], 'CREATE', "Created section #$id"); $json(['section_id'=>$id], 201); exit; }
    if (preg_match('#^sections/(\d+)$#', $path, $m) && $method === 'PUT') { $u = $adminOnly(); Section::update((int)$m[1], $body()) ? ($json(['message'=>'Updated']) && AuditLog::log($u['user_id'], 'UPDATE', "Updated section #{$m[1]}")) : $err('Failed to update section'); exit; }
    if (preg_match('#^sections/(\d+)$#', $path, $m) && $method === 'DELETE') { $u = $adminOnly(); Section::delete((int)$m[1]) ? ($json(['message'=>'Deleted']) && AuditLog::log($u['user_id'], 'DELETE', "Deleted section #{$m[1]}")) : $err('Cannot delete section: it still has students enrolled. Remove all students first.'); exit; }
    if (preg_match('#^sections/(\d+)/assign-adviser$#', $path, $m) && $method === 'PUT') { $u = $adminOnly(); $d = $body(); $adviserId = !empty($d['adviser_id']) ? (int)$d['adviser_id'] : null; Section::assignAdviser((int)$m[1], $adviserId) ? ($json(['message'=>'Adviser assigned']) && AuditLog::log($u['user_id'], 'UPDATE', "Adviser assigned to section #{$m[1]}")) : $err('Failed to assign adviser'); exit; }
    if (preg_match('#^sections/(\d+)/students$#', $path, $m) && $method === 'GET') { $authOnly(); $json(Student::getBySection((int)$m[1])); exit; }

    // ─── PARENTS ───
    if ($path === 'parents' && $method === 'GET') { $u = $adminOnly(); $json(ParentModel::getAll()); exit; }
    if (preg_match('#^parents/(\d+)$#', $path, $m) && $method === 'GET') { $u = $adminOnly(); $json(ParentModel::getById((int)$m[1]) ?: $err('Parent not found', 404)); exit; }
    if ($path === 'parents' && $method === 'POST') { $u = $adminOnly(); $d = $body(); if (empty($d['username']) || empty($d['password'])) { $err('Username and password required'); exit; } $id = ParentModel::create($d); if (!$id) { $err('Failed to create parent. Username or email may already exist.'); exit; } AuditLog::log($u['user_id'], 'CREATE', "Created parent #$id"); $json(['parent_id'=>$id], 201); exit; }
    if (preg_match('#^parents/(\d+)$#', $path, $m) && $method === 'PUT') { $u = $adminOnly(); ParentModel::update((int)$m[1], $body()) ? ($json(['message'=>'Updated']) && AuditLog::log($u['user_id'], 'UPDATE', "Updated parent #{$m[1]}")) : $err('Failed to update parent'); exit; }
    if (preg_match('#^parents/(\d+)$#', $path, $m) && $method === 'DELETE') { $u = $adminOnly(); ParentModel::delete((int)$m[1]) ? ($json(['message'=>'Deleted']) && AuditLog::log($u['user_id'], 'DELETE', "Deleted parent #{$m[1]}")) : $err('Failed to delete parent. It may have linked students.'); exit; }

    // ─── STUDENTS ───
    if ($path === 'students' && $method === 'GET') { $authOnly(); $json(Student::getAll(['section_id'=>$query('section_id'),'status'=>$query('status'),'grade_level'=>$query('grade_level'),'search'=>$query('search')])); exit; }
    if (preg_match('#^students/(\d+)$#', $path, $m) && $method === 'GET') { $authOnly(); $json(Student::getById((int)$m[1]) ?: $err('Student not found', 404)); exit; }
    if ($path === 'students' && $method === 'POST') { $u = $adminOnly(); $d = $body(); if (empty($d['first_name']) || empty($d['last_name'])) { $err('First name and last name required'); exit; } if (empty($d['lrn'])) { $err('LRN number required'); exit; } $id = Student::create($d); if (!$id) { $err('Failed to create student. LRN or student number may already exist.'); exit; } AuditLog::log($u['user_id'], 'CREATE', "Created student #$id"); $json(['student_id'=>$id], 201); exit; }
    if (preg_match('#^students/(\d+)$#', $path, $m) && $method === 'PUT') { $u = $adminOnly(); Student::update((int)$m[1], $body()) ? ($json(['message'=>'Updated']) && AuditLog::log($u['user_id'], 'UPDATE', "Updated student #{$m[1]}")) : $err('Failed to update student'); exit; }
    if (preg_match('#^students/(\d+)$#', $path, $m) && $method === 'DELETE') { $u = $adminOnly(); Student::delete((int)$m[1]) ? ($json(['message'=>'Deleted']) && AuditLog::log($u['user_id'], 'DELETE', "Deleted student #{$m[1]}")) : $err('Failed to delete student. It may have attendance records.'); exit; }
    if (preg_match('#^students/(\d+)/generate-qr$#', $path, $m) && $method === 'POST') { $u = $adminOnly(); $qr = Student::generateQRCode((int)$m[1]); $qr ? ($json(['qr_code'=>$qr]) && AuditLog::log($u['user_id'], 'GENERATE_QR', "QR for student #{$m[1]}")) : $err('Failed to generate QR'); exit; }
    if (preg_match('#^students/(\d+)/generate-barcode$#', $path, $m) && $method === 'POST') { $u = $adminOnly(); $bc = Student::generateBarcode((int)$m[1]); $bc ? ($json(['barcode'=>$bc]) && AuditLog::log($u['user_id'], 'GENERATE_BARCODE', "Barcode for student #{$m[1]}")) : $err('Failed to generate barcode'); exit; }

    // ─── ATTENDANCE ───
    if ($path === 'attendance/scan' && $method === 'POST') { $authOnly(); $d = $body(); if (empty($d['barcode'])) { $err('Barcode is required'); exit; } $r = Attendance::scan($d); $r ? $json($r, 201) : $err('Student not found or inactive. Check the barcode.'); exit; }
    if ($path === 'attendance' && $method === 'GET') { $authOnly(); $json(Attendance::getAll(['date'=>$query('date'),'date_from'=>$query('date_from'),'date_to'=>$query('date_to'),'student_id'=>$query('student_id'),'section_id'=>$query('section_id'),'status'=>$query('status')])); exit; }
    if (preg_match('#^attendance/(\d+)$#', $path, $m) && $method === 'GET') { $authOnly(); $json(Attendance::getById((int)$m[1]) ?: $err('Attendance record not found', 404)); exit; }
    if (preg_match('#^attendance/(\d+)$#', $path, $m) && $method === 'PUT') { $u = $adminOnly(); Attendance::update((int)$m[1], $body()) ? $json(['message'=>'Updated']) : $err('Failed to update attendance'); exit; }
    if (preg_match('#^attendance/(\d+)$#', $path, $m) && $method === 'DELETE') { $u = $adminOnly(); Attendance::delete((int)$m[1]) ? ($json(['message'=>'Deleted']) && AuditLog::log($u['user_id'], 'DELETE', "Deleted attendance #{$m[1]}")) : $err('Failed to delete attendance'); exit; }
    if (preg_match('#^attendance/(\d+)/notify$#', $path, $m) && $method === 'POST') { $authOnly(); $r = Attendance::sendAttendanceNotification((int)$m[1]); $r['success'] ? $json($r) : $err($r['message'], 400); exit; }

    // ─── TEACHER SECTIONS ───
    if ($path === 'teacher-sections' && $method === 'GET') { $u = $authOnly(); $db = $db(); $tid = $query('teacher_id') ? (int)$query('teacher_id') : $u['user_id']; $stmt = $db->prepare("SELECT DISTINCT sec.* FROM sections sec JOIN (SELECT section_id FROM teacher_sections WHERE teacher_id = ? UNION SELECT section_id FROM teacher_subjects WHERE teacher_id = ?) t ON sec.section_id = t.section_id"); $stmt->execute([$tid, $tid]); $json($stmt->fetchAll()); exit; }
    if ($path === 'teacher-sections/assign' && $method === 'POST') { $u = $adminOnly(); $d = $body(); $db = $db(); $stmt = $db->prepare("INSERT INTO teacher_sections (section_id, teacher_id) VALUES (?, ?) ON CONFLICT DO NOTHING"); $stmt->execute([$d['section_id'], $d['teacher_id']]); $json(['message' => 'Assigned']); exit; }
    if ($path === 'teacher-sections/remove' && $method === 'POST') { $u = $adminOnly(); $d = $body(); $db = $db(); $stmt = $db->prepare("DELETE FROM teacher_sections WHERE section_id = ? AND teacher_id = ?"); $stmt->execute([$d['section_id'], $d['teacher_id']]); $json(['message' => 'Removed']); exit; }

    // ─── CLASS ATTENDANCE ───
    if ($path === 'class-attendance' && $method === 'GET') { $authOnly(); $db = $db(); $sid = $query('section_id'); $date = $query('date', date('Y-m-d')); if (!$sid) { $err('section_id required'); exit; }
        $students = Student::getBySection((int)$sid);
        $attStmt = $db->prepare("SELECT student_id, status, remarks, time_in, time_out FROM attendance WHERE attendance_date = ? AND student_id = ANY(?)");
        $ids = array_column($students, 'student_id');
        if (empty($ids)) { $json([]); exit; }
        $attStmt->execute([$date, '{' . implode(',', $ids) . '}']);
        $attMap = []; foreach ($attStmt->fetchAll() as $a) { $attMap[$a['student_id']] = $a; }
        foreach ($students as &$s) {
            $s['att_status'] = $attMap[$s['student_id']]['status'] ?? '';
            $s['att_remarks'] = $attMap[$s['student_id']]['remarks'] ?? '';
            $s['time_in'] = $attMap[$s['student_id']]['time_in'] ?? null;
            $s['time_out'] = $attMap[$s['student_id']]['time_out'] ?? null;
        }
        $json($students); exit;
    }
    if ($path === 'class-attendance/save' && $method === 'POST') { $u = $authOnly(); $d = $body(); $db = $db(); $date = $d['date'] ?? date('Y-m-d'); $subjectId = $d['subject_id'] ?? null;
        foreach ($d['records'] ?? [] as $r) {
            $sid = (int)$r['student_id']; $status = $r['status'] ?? '';
            if (!$sid || !$status) continue;
            $remarks = 'Marked by teacher' . ($r['remarks'] ? ': ' . $r['remarks'] : '');
            if ($subjectId) $remarks .= " [Subject: $subjectId]";
            $existing = $db->prepare("SELECT attendance_id FROM attendance WHERE student_id = ? AND attendance_date = ?");
            $existing->execute([$sid, $date]);
            if ($existing->fetch()) {
                $upd = $db->prepare("UPDATE attendance SET status = ?, remarks = ? WHERE student_id = ? AND attendance_date = ?");
                $upd->execute([$status, $remarks, $sid, $date]);
            } else {
                $ins = $db->prepare("INSERT INTO attendance (student_id, attendance_date, status, remarks) VALUES (?, ?, ?, ?)");
                $ins->execute([$sid, $date, $status, $remarks]);
            }
        }
        $json(['message' => 'Attendance saved']); exit;
    }

    // ─── SUBJECTS ───
    if ($path === 'subjects' && $method === 'GET') { $authOnly(); $json(Subject::getAll()); exit; }
    if (preg_match('#^subjects/(\d+)$#', $path, $m) && $method === 'GET') { $authOnly(); $json(Subject::getById((int)$m[1]) ?: $err('Subject not found', 404)); exit; }
    if ($path === 'subjects' && $method === 'POST') { $u = $adminOnly(); $d = $body(); if (empty($d['subject_name'])) { $err('Subject name required'); exit; } $id = Subject::create($d); if (!$id) { $err('Failed to create subject'); exit; } AuditLog::log($u['user_id'], 'CREATE', "Created subject #$id"); $json(['subject_id'=>$id], 201); exit; }
    if ($path === 'subjects/seed-presets' && $method === 'POST') { $u = $adminOnly(); $c = Subject::seedPresets(); AuditLog::log($u['user_id'], 'SEED', "Seeded $c preset subjects"); $json(['message'=>"Added $c preset subjects"]); exit; }
    if (preg_match('#^subjects/(\d+)$#', $path, $m) && $method === 'PUT') { $u = $adminOnly(); Subject::update((int)$m[1], $body()) ? ($json(['message'=>'Updated']) && AuditLog::log($u['user_id'], 'UPDATE', "Updated subject #{$m[1]}")) : $err('Failed to update subject'); exit; }
    if (preg_match('#^subjects/(\d+)$#', $path, $m) && $method === 'DELETE') { $u = $adminOnly(); Subject::delete((int)$m[1]) ? ($json(['message'=>'Deleted']) && AuditLog::log($u['user_id'], 'DELETE', "Deleted subject #{$m[1]}")) : $err('Failed to delete subject'); exit; }
    if ($path === 'teacher-subjects' && $method === 'GET') { $u = $authOnly(); $tid = $query('teacher_id') ? (int)$query('teacher_id') : $u['user_id']; $json(Subject::getTeacherSubjects($tid, $query('section_id'))); exit; }
    if ($path === 'teacher-subjects/assign' && $method === 'POST') { $u = $adminOnly(); $d = $body(); Subject::assign($d['teacher_id'], $d['section_id'], $d['subject_id']) ? $json(['message'=>'Assigned']) : $err('Failed to assign'); exit; }
    if ($path === 'teacher-subjects/remove' && $method === 'POST') { $u = $adminOnly(); $d = $body(); Subject::unassign($d['teacher_id'], $d['section_id'], $d['subject_id']) ? $json(['message'=>'Removed']) : $err('Failed to remove'); exit; }

    // ─── STUDENT PHOTO ───
    if (preg_match('#^students/(\d+)/photo$#', $path, $m) && $method === 'POST') { $u = $adminOnly(); if (empty($_FILES['photo'])) { $err('Photo file required'); exit; } $path2 = Student::uploadPhoto((int)$m[1], $_FILES['photo']); $path2 ? ($json(['photo'=>$path2]) && AuditLog::log($u['user_id'], 'UPLOAD_PHOTO', "Photo uploaded for student #{$m[1]}")) : $err('Failed to upload. Only jpg, png, gif, webp allowed.', 400); exit; }

    // ─── PULL-OUTS (PUD) ───
    if ($path === 'pull-outs' && $method === 'GET') { $authOnly(); $json(PullOut::getAll(['status'=>$query('status'),'date'=>$query('date')])); exit; }
    if ($path === 'pull-outs/active' && $method === 'GET') { $authOnly(); $json(PullOut::getActive()); exit; }
    if ($path === 'pull-outs' && $method === 'POST') { $u = $authOnly(); if ($u['role'] !== 'Admin' && $u['role'] !== 'Teacher' && $u['role'] !== 'Staff') { $err('Forbidden', 403); exit; } $d = $body(); if (empty($d['student_id']) || empty($d['picked_up_by'])) { $err('student_id and picked_up_by required'); exit; } $d['created_by'] = $u['user_id']; $id = PullOut::create($d); if (!$id) { $err('Failed to create pull-out record'); exit; } AuditLog::log($u['user_id'], 'CREATE', "Pull-out #$id for student #{$d['student_id']}"); $json(['pull_out_id'=>$id], 201); exit; }
    if (preg_match('#^pull-outs/(\d+)/return$#', $path, $m) && $method === 'POST') { $u = $authOnly(); if ($u['role'] !== 'Admin' && $u['role'] !== 'Teacher' && $u['role'] !== 'Staff') { $err('Forbidden', 403); exit; } PullOut::markReturned((int)$m[1]) ? ($json(['message'=>'Student returned']) && AuditLog::log($u['user_id'], 'UPDATE', "Pull-out #{$m[1]} returned")) : $err('Failed to mark returned', 400); exit; }

    // ─── EXCUSES ───
    if ($path === 'excuses' && $method === 'GET') { $u = $authOnly(); $f = ['status'=>$query('status'),'date'=>$query('date'),'type'=>$query('type'),'student_id'=>$query('student_id'),'section_id'=>$query('section_id')]; if ($u['role'] === 'Teacher') $f['teacher_id'] = $u['user_id']; if ($u['role'] === 'Adviser') $f['adviser_id'] = $u['user_id']; $json(Excuse::getAll($f)); exit; }
    if (preg_match('#^excuses/(\d+)$#', $path, $m) && $method === 'GET') { $authOnly(); $json(Excuse::getById((int)$m[1]) ?: $err('Excuse not found', 404)); exit; }
    if ($path === 'excuses' && $method === 'POST') { $u = $authOnly(); $d = $body(); if (empty($d['student_id']) || empty($d['excuse_date']) || empty($d['type']) || empty($d['reason'])) { $err('student_id, excuse_date, type, and reason required'); exit; } $d['submitted_by'] = 'Parent'; $id = Excuse::create($d); if (!$id) { $err('Failed to create excuse'); exit; } AuditLog::log($u['user_id'], 'CREATE', "Excuse #$id for student #{$d['student_id']}"); $json(['excuse_id'=>$id], 201); exit; }
    if (preg_match('#^excuses/(\d+)/teacher-approve$#', $path, $m) && $method === 'POST') { $u = $authOnly(); if ($u['role'] !== 'Teacher' && $u['role'] !== 'Admin') { $err('Forbidden', 403); exit; } Excuse::approveByTeacher((int)$m[1], $u['user_id']) ? ($json(['message'=>'Teacher approved']) && AuditLog::log($u['user_id'], 'APPROVE', "Excuse #{$m[1]} teacher approved")) : $err('Failed. Excuse may already be processed.', 400); exit; }
    if (preg_match('#^excuses/(\d+)/approve$#', $path, $m) && $method === 'POST') { $u = $authOnly(); if ($u['role'] !== 'Admin' && $u['role'] !== 'Adviser') { $err('Forbidden', 403); exit; } Excuse::approveFinal((int)$m[1], $u['user_id']) ? ($json(['message'=>'Approved']) && AuditLog::log($u['user_id'], 'APPROVE', "Excuse #{$m[1]} approved")) : $err('Failed. Excuse must be Teacher Approved first.', 400); exit; }
    if (preg_match('#^excuses/(\d+)/reject$#', $path, $m) && $method === 'POST') { $u = $authOnly(); $d = $body(); Excuse::reject((int)$m[1], $u['user_id'], $d['reason'] ?? 'No reason provided') ? ($json(['message'=>'Rejected']) && AuditLog::log($u['user_id'], 'REJECT', "Excuse #{$m[1]} rejected")) : $err('Failed to reject', 400); exit; }
    if (preg_match('#^excuses/(\d+)$#', $path, $m) && $method === 'DELETE') { $u = $adminOnly(); Excuse::delete((int)$m[1]) ? $json(['message'=>'Deleted']) : $err('Failed to delete'); exit; }

    // ─── SCAN LOGS ───
    if ($path === 'scan-logs' && $method === 'GET') { $authOnly(); $json(ScanLog::getAll(['date'=>$query('date'),'student_id'=>$query('student_id'),'scan_type'=>$query('scan_type'),'exit_type'=>$query('exit_type'),'date_from'=>$query('date_from'),'date_to'=>$query('date_to'),'search'=>$query('search')])); exit; }
    if ($path === 'scan-logs/check' && $method === 'GET') { $authOnly(); $json(ScanLog::getLastUpdate()); exit; }
    if ($path === 'scan-logs/summary' && $method === 'GET') { $authOnly(); $json(ScanLog::getTodaySummary()); exit; }
    if ($path === 'scan-logs/inside' && $method === 'GET') { $authOnly(); $json(ScanLog::getStudentsInside($query('date'))); exit; }
    if ($path === 'scan-logs/outside' && $method === 'GET') { $authOnly(); $json(ScanLog::getStudentsOutside($query('date'))); exit; }

    // ─── GATE DASHBOARD ───
    if ($path === 'dashboard/gate' && $method === 'GET') { $authOnly(); $json(ScanLog::getTodaySummary()); exit; }

    // ─── ADVISER ───
    if ($path === 'adviser/dashboard' && $method === 'GET') { $u = $authOnly(); if ($u['role'] !== 'Adviser' && $u['role'] !== 'Admin') { $err('Forbidden', 403); exit; } $json(Attendance::getAdviserDashboard($u['user_id'])); exit; }
    if ($path === 'adviser/attendance' && $method === 'GET') { $u = $authOnly(); $json(Attendance::getAdviserAttendance($u['user_id'], $query('date', date('Y-m-d')), $query('section_id'))); exit; }
    if ($path === 'adviser/reports' && $method === 'GET') { $u = $authOnly(); $json(Attendance::getAdviserReport($u['user_id'], $query('section_id'), $query('date_from', date('Y-m-d', strtotime('-30 days'))), $query('date_to', date('Y-m-d')))); exit; }

    // ─── PARENT PORTAL ───
    if ($path === 'parent/dashboard' && $method === 'GET') { $u = $authOnly(); $p = ParentModel::getByUsername($u['username']); $p ? $json(ParentModel::getDashboard($p['parent_id'])) : $err('Parent not found', 404); exit; }
    if ($path === 'parent/attendance' && $method === 'GET') { $u = $authOnly(); $p = ParentModel::getByUsername($u['username']); $p ? $json(ParentModel::getChildrenAttendance($p['parent_id'], $query('date_from'), $query('date_to'))) : $err('Parent not found', 404); exit; }
    if ($path === 'parent/notifications' && $method === 'GET') { $u = $authOnly(); $p = ParentModel::getByUsername($u['username']); $p ? $json(ParentModel::getNotifications($p['parent_id'])) : $err('Parent not found', 404); exit; }
    if ($path === 'parent/student' && $method === 'GET') { $u = $authOnly(); $p = ParentModel::getByUsername($u['username']); $p ? $json(ParentModel::getChildren($p['parent_id'])) : $err('Parent not found', 404); exit; }

    // ─── REPORTS ───
    if ($path === 'reports/daily' && $method === 'GET') { $authOnly(); $json(Attendance::getDailyReport($query('date', date('Y-m-d')))); exit; }
    if ($path === 'reports/monthly' && $method === 'GET') { $authOnly(); $json(Attendance::getMonthlyReport($query('year', date('Y')), $query('month', date('m')))); exit; }
    if (preg_match('#^reports/student/(\d+)$#', $path, $m) && $method === 'GET') { $authOnly(); $json(Attendance::getStudentReport((int)$m[1], $query('date_from', date('Y-m-d', strtotime('-30 days'))), $query('date_to', date('Y-m-d')))); exit; }
    if (preg_match('#^reports/section/(\d+)$#', $path, $m) && $method === 'GET') { $authOnly(); $json(Attendance::getSectionReport((int)$m[1], $query('date_from', date('Y-m-d', strtotime('-30 days'))), $query('date_to', date('Y-m-d')))); exit; }
    if ($path === 'reports/late' && $method === 'GET') { $authOnly(); $json(Attendance::getLateReport($query('date_from', date('Y-m-d', strtotime('-7 days'))), $query('date_to', date('Y-m-d')))); exit; }
    if ($path === 'reports/absent' && $method === 'GET') { $authOnly(); $json(Attendance::getAbsentReport($query('date_from', date('Y-m-d', strtotime('-7 days'))), $query('date_to', date('Y-m-d')))); exit; }
    if (str_starts_with($path, 'reports/export/')) {
        $authOnly(); $type = $query('type', 'daily'); $date = $query('date', date('Y-m-d'));
        if (str_contains($path, 'pdf')) { Attendance::exportPDF($type, $date); exit; }
        if (str_contains($path, 'excel')) { Attendance::exportExcel($type, $date); exit; }
    }

    // ─── EMAIL LOGS ───
    if ($path === 'email-logs' && $method === 'GET') { $u = $adminOnly(); $json(EmailLog::getAll()); exit; }
    if (preg_match('#^email-logs/(\d+)/resend$#', $path, $m) && $method === 'POST') { $u = $adminOnly(); EmailLog::resend((int)$m[1]) ? ($json(['message'=>'Resent']) && AuditLog::log($u['user_id'], 'SEND_EMAIL', "Resent email #{$m[1]}")) : $err('Failed to resend'); exit; }

    // ─── AUDIT LOGS ───
    if ($path === 'audit-logs' && $method === 'GET') { $u = $adminOnly(); $json(AuditLog::getAll(['user_id'=>$query('user_id'),'action'=>$query('action'),'date_from'=>$query('date_from'),'date_to'=>$query('date_to')])); exit; }
    if (preg_match('#^audit-logs/(\d+)$#', $path, $m) && $method === 'GET') { $u = $adminOnly(); $json(AuditLog::getById((int)$m[1]) ?: $err('Audit log not found', 404)); exit; }

    // ─── SETTINGS ───
    if ($path === 'settings' && $method === 'GET') { $u = $adminOnly(); $json(SystemSettings::getAll()); exit; }
    if ($path === 'settings' && $method === 'PUT') { $u = $adminOnly(); SystemSettings::update($body()) ? ($json(['message'=>'Settings updated']) && AuditLog::log($u['user_id'], 'UPDATE', "Updated settings")) : $err('Failed to update settings'); exit; }

    // ─── BACKUPS ───
    if ($path === 'backups/create' && $method === 'POST') { $u = $adminOnly(); $d = $body(); $b = Backup::create($d['type'] ?? 'Manual', $u['user_id']); $b ? ($json(['backup'=>$b], 201) && AuditLog::log($u['user_id'], 'CREATE', "Backup created")) : $err('Failed to create backup', 500); exit; }
    if ($path === 'backups' && $method === 'GET') { $u = $adminOnly(); $json(Backup::getAll()); exit; }
    if (preg_match('#^backups/(\d+)/download$#', $path, $m) && $method === 'GET') { $u = $adminOnly(); Backup::download((int)$m[1]); exit; }
    if (preg_match('#^backups/(\d+)/restore$#', $path, $m) && $method === 'POST') { $u = $adminOnly(); Backup::restore((int)$m[1]) ? ($json(['message'=>'Restored']) && AuditLog::log($u['user_id'], 'RESTORE', "Restored backup #{$m[1]}")) : $err('Failed to restore backup', 500); exit; }
    if (preg_match('#^backups/(\d+)$#', $path, $m) && $method === 'DELETE') { $u = $adminOnly(); Backup::delete((int)$m[1]) ? ($json(['message'=>'Deleted']) && AuditLog::log($u['user_id'], 'DELETE', "Deleted backup #{$m[1]}")) : $err('Failed to delete backup'); exit; }

    // ─── DASHBOARDS ───
    if ($path === 'dashboard/admin' && $method === 'GET') { $u = $adminOnly(); $json(Attendance::getAdminDashboard()); exit; }
    if ($path === 'dashboard/admin-full' && $method === 'GET') { $u = $adminOnly(); $json(Attendance::getComprehensiveDashboard()); exit; }
    if ($path === 'dashboard/teacher' && $method === 'GET') { $u = $authOnly(); $json(Attendance::getTeacherDashboard($u['user_id'])); exit; }
    if ($path === 'dashboard/staff' && $method === 'GET') { $authOnly(); $json(Attendance::getStaffDashboard()); exit; }
    if ($path === 'dashboard/viewer' && $method === 'GET') { $authOnly(); $json(Attendance::getViewerDashboard()); exit; }

    http_response_code(404);
    echo json_encode(['success' => false, 'message' => 'Route not found', 'path' => $path]);
} catch (Throwable $e) {
    handleError($e);
}
