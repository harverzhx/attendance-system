<?php
date_default_timezone_set('Asia/Manila');

// For Caddy/FrankenPHP: original path passed via ?p= query param
// For dev router.php: use REQUEST_URI directly
$originalPath = $_GET['p'] ?? $_SERVER['REQUEST_URI'] ?? '/';
$path = parse_url($originalPath, PHP_URL_PATH);

// API routes -> simple_api.php
if (preg_match('#^/api/#', $path)) {
    $_SERVER['REQUEST_URI'] = substr($path, 4);
    require __DIR__ . '/../simple_api.php';
    return true;
}

// Page routing: /login -> /pages/login.html, etc.
$pageRoutes = [
    '/login' => 'pages/login.html', '/register' => 'pages/register.html', '/dashboard' => 'pages/dashboard.html',
    '/users' => 'pages/users.html', '/registrations' => 'pages/registrations.html',
    '/students' => 'pages/students.html', '/parents' => 'pages/parents.html', '/sections' => 'pages/sections.html',
    '/scanner' => 'pages/scanner.html', '/attendance' => 'pages/attendance-records.html',
    '/reports' => 'pages/reports.html', '/adviser' => 'pages/adviser-dashboard.html',
    '/parent' => 'pages/parent-portal.html', '/parent/attendance' => 'pages/parent-attendance.html',
    '/parent/notifications' => 'pages/parent-notifications.html',
    '/email-logs' => 'pages/email-logs.html', '/audit-logs' => 'pages/audit-logs.html',
    '/settings' => 'pages/settings.html', '/backups' => 'pages/backups.html',
];
if (isset($pageRoutes[$path])) {
    require __DIR__ . '/' . $pageRoutes[$path];
    return true;
}

// Fallback -> index.html (login page)
require __DIR__ . '/index.html';
return true;
