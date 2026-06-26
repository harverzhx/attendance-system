<?php

error_reporting(E_ALL);
ini_set('display_errors', '0');

$uri = $_SERVER['REQUEST_URI'];
$path = parse_url($uri, PHP_URL_PATH);

// API routes -> simple_api.php
if (preg_match('#^/api/#', $path)) {
    $_SERVER['REQUEST_URI'] = substr($path, 4);
    require __DIR__ . '/simple_api.php';
    return true;
}

// Page routing: /login -> public/pages/login.html, etc.
$pageRoutes = [
    '/login' => 'login.html', '/register' => 'register.html', '/dashboard' => 'dashboard.html',
    '/users' => 'users.html', '/registrations' => 'registrations.html',
    '/students' => 'students.html', '/parents' => 'parents.html', '/sections' => 'sections.html',
    '/scanner' => 'scanner.html', '/attendance' => 'attendance-records.html',
    '/reports' => 'reports.html', '/adviser' => 'adviser-dashboard.html',
    '/parent' => 'parent-portal.html', '/parent/attendance' => 'parent-attendance.html',
    '/parent/notifications' => 'parent-notifications.html',
    '/email-logs' => 'email-logs.html', '/audit-logs' => 'audit-logs.html',
    '/settings' => 'settings.html', '/backups' => 'backups.html',
];
if (isset($pageRoutes[$path])) {
    $page = __DIR__ . '/public/pages/' . $pageRoutes[$path];
    $page = str_replace(['/', '\\'], DIRECTORY_SEPARATOR, $page);
    if (is_file($page)) { require $page; return true; }
}

// Static files -> public/
$file = __DIR__ . '/public' . $path;
$file = str_replace(['/', '\\'], DIRECTORY_SEPARATOR, $file);
$realFile = realpath($file);
$realPublic = realpath(__DIR__ . '/public');
if ($realFile && str_starts_with($realFile, $realPublic) && is_file($realFile)) {
    $ext = pathinfo($path, PATHINFO_EXTENSION);
    $mimes = ['css'=>'text/css','js'=>'application/javascript','png'=>'image/png','jpg'=>'image/jpeg','jpeg'=>'image/jpeg','svg'=>'image/svg+xml','ico'=>'image/x-icon','woff2'=>'font/woff2','ttf'=>'font/ttf','html'=>'text/html','htm'=>'text/html'];
    if (isset($mimes[$ext])) { header("Content-Type: $mimes[$ext]"); }
    readfile($realFile); return true;
}

// Fallback -> public/index.html
require __DIR__ . '/public/index.html';
return true;
