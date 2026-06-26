-- School Gate Attendance System - PostgreSQL Schema
-- Run: psql -U postgres -d school_gate_attendance -f schema.sql

CREATE SCHEMA IF NOT EXISTS school_gate;
SET search_path TO school_gate;

-- 1. roles
CREATE TABLE IF NOT EXISTS roles (
    role_id SERIAL PRIMARY KEY,
    role_name VARCHAR(100) NOT NULL UNIQUE
);

-- 2. users
CREATE TABLE IF NOT EXISTS users (
    user_id SERIAL PRIMARY KEY,
    employee_id VARCHAR(50) NULL UNIQUE,
    first_name VARCHAR(255) NOT NULL,
    middle_name VARCHAR(255) NULL,
    last_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    contact_number VARCHAR(50) NULL UNIQUE,
    username VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    role_id INTEGER NOT NULL REFERENCES roles(role_id) ON DELETE RESTRICT,
    status VARCHAR(50) NOT NULL DEFAULT 'Active' CHECK (status IN ('Active', 'Inactive')),
    specialization VARCHAR(255) NULL,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- 3. parents
CREATE TABLE IF NOT EXISTS parents (
    parent_id SERIAL PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    middle_name VARCHAR(255) NULL,
    last_name VARCHAR(255) NOT NULL,
    relationship VARCHAR(100) NOT NULL DEFAULT 'Parent',
    email VARCHAR(255) NOT NULL UNIQUE,
    contact_number VARCHAR(50) NULL,
    username VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    status VARCHAR(50) NOT NULL DEFAULT 'Active' CHECK (status IN ('Active', 'Inactive')),
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- 4. sections
CREATE TABLE IF NOT EXISTS sections (
    section_id SERIAL PRIMARY KEY,
    grade_level VARCHAR(50) NOT NULL,
    section_name VARCHAR(255) NOT NULL UNIQUE,
    adviser_id INTEGER NULL REFERENCES users(user_id) ON DELETE SET NULL,
    school_year VARCHAR(20) NOT NULL,
    status VARCHAR(50) NOT NULL DEFAULT 'Active' CHECK (status IN ('Active', 'Inactive')),
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- 5. students
CREATE TABLE IF NOT EXISTS students (
    student_id SERIAL PRIMARY KEY,
    student_number VARCHAR(50) NOT NULL UNIQUE,
    lrn VARCHAR(50) NOT NULL UNIQUE,
    first_name VARCHAR(255) NOT NULL,
    middle_name VARCHAR(255) NULL,
    last_name VARCHAR(255) NOT NULL,
    gender VARCHAR(20) NULL,
    birthdate DATE NULL,
    address TEXT NULL,
    contact_number VARCHAR(50) NULL,
    email VARCHAR(255) NULL,
    section_id INTEGER NULL REFERENCES sections(section_id) ON DELETE SET NULL,
    parent_id INTEGER NULL REFERENCES parents(parent_id) ON DELETE SET NULL,
    qr_code VARCHAR(255) NULL,
    barcode VARCHAR(255) NULL,
    photo VARCHAR(255) NULL,
    status VARCHAR(50) NOT NULL DEFAULT 'Active' CHECK (status IN ('Active', 'Inactive')),
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_students_barcode ON students(barcode);
CREATE INDEX IF NOT EXISTS idx_students_qr_code ON students(qr_code);
CREATE INDEX IF NOT EXISTS idx_students_section_id ON students(section_id);
CREATE INDEX IF NOT EXISTS idx_students_parent_id ON students(parent_id);

-- 6. subjects
CREATE TABLE IF NOT EXISTS subjects (
    subject_id SERIAL PRIMARY KEY,
    subject_name VARCHAR(255) NOT NULL,
    subject_code VARCHAR(50) NOT NULL UNIQUE,
    description TEXT NULL,
    category VARCHAR(100) NOT NULL DEFAULT 'Other',
    status VARCHAR(50) NOT NULL DEFAULT 'Active' CHECK (status IN ('Active', 'Inactive')),
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- 7. teacher_sections
CREATE TABLE IF NOT EXISTS teacher_sections (
    section_id INTEGER NOT NULL REFERENCES sections(section_id) ON DELETE CASCADE,
    teacher_id INTEGER NOT NULL REFERENCES users(user_id) ON DELETE CASCADE,
    PRIMARY KEY (section_id, teacher_id)
);

-- 8. teacher_subjects
CREATE TABLE IF NOT EXISTS teacher_subjects (
    id SERIAL PRIMARY KEY,
    teacher_id INTEGER NOT NULL REFERENCES users(user_id) ON DELETE CASCADE,
    section_id INTEGER NOT NULL REFERENCES sections(section_id) ON DELETE CASCADE,
    subject_id INTEGER NOT NULL REFERENCES subjects(subject_id) ON DELETE CASCADE,
    UNIQUE (teacher_id, section_id, subject_id)
);

CREATE INDEX IF NOT EXISTS idx_teacher_subjects_teacher ON teacher_subjects(teacher_id);
CREATE INDEX IF NOT EXISTS idx_teacher_subjects_section ON teacher_subjects(section_id);

-- 9. attendance
CREATE TABLE IF NOT EXISTS attendance (
    attendance_id SERIAL PRIMARY KEY,
    student_id INTEGER NOT NULL REFERENCES students(student_id) ON DELETE CASCADE,
    attendance_date DATE NOT NULL,
    time_in TIME NULL,
    time_out TIME NULL,
    status VARCHAR(50) NULL CHECK (status IN ('Present', 'Late', 'Absent')),
    remarks TEXT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    UNIQUE (student_id, attendance_date)
);

CREATE INDEX IF NOT EXISTS idx_attendance_student_date ON attendance(student_id, attendance_date);
CREATE INDEX IF NOT EXISTS idx_attendance_date ON attendance(attendance_date);

-- 10. scan_logs
CREATE TABLE IF NOT EXISTS scan_logs (
    scan_id SERIAL PRIMARY KEY,
    student_id INTEGER NOT NULL REFERENCES students(student_id) ON DELETE CASCADE,
    scan_type VARCHAR(20) NOT NULL CHECK (scan_type IN ('ENTRY', 'EXIT')),
    exit_type VARCHAR(100) NULL,
    remarks TEXT NULL,
    scan_time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_scan_logs_student_date ON scan_logs(student_id, (scan_time::date));
CREATE INDEX IF NOT EXISTS idx_scan_logs_scan_time ON scan_logs(scan_time);
CREATE INDEX IF NOT EXISTS idx_scan_logs_scan_type ON scan_logs(scan_type);

-- 11. email_logs
CREATE TABLE IF NOT EXISTS email_logs (
    email_log_id SERIAL PRIMARY KEY,
    student_id INTEGER NOT NULL REFERENCES students(student_id) ON DELETE CASCADE,
    parent_email VARCHAR(255) NOT NULL,
    notification_type VARCHAR(100) NOT NULL,
    subject VARCHAR(255) NOT NULL,
    message TEXT NOT NULL,
    send_status VARCHAR(50) NOT NULL DEFAULT 'Pending' CHECK (send_status IN ('Pending', 'Sent', 'Failed')),
    sent_at TIMESTAMP NULL,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_email_logs_student ON email_logs(student_id);
CREATE INDEX IF NOT EXISTS idx_email_logs_created ON email_logs(created_at);

-- 12. audit_logs
CREATE TABLE IF NOT EXISTS audit_logs (
    audit_id SERIAL PRIMARY KEY,
    user_id INTEGER NULL REFERENCES users(user_id) ON DELETE SET NULL,
    action VARCHAR(100) NOT NULL,
    description TEXT NOT NULL,
    ip_address VARCHAR(45) NOT NULL DEFAULT '127.0.0.1',
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_audit_logs_user ON audit_logs(user_id);
CREATE INDEX IF NOT EXISTS idx_audit_logs_created ON audit_logs(created_at);

-- 13. registrations
CREATE TABLE IF NOT EXISTS registrations (
    registration_id SERIAL PRIMARY KEY,
    user_id INTEGER NOT NULL REFERENCES users(user_id) ON DELETE CASCADE,
    approval_status VARCHAR(50) NOT NULL DEFAULT 'Pending' CHECK (approval_status IN ('Pending', 'Approved', 'Rejected')),
    approved_by INTEGER NULL REFERENCES users(user_id) ON DELETE SET NULL,
    approved_date TIMESTAMP NULL,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_registrations_status ON registrations(approval_status);

-- 14. backups
CREATE TABLE IF NOT EXISTS backups (
    backup_id SERIAL PRIMARY KEY,
    filename VARCHAR(255) NOT NULL,
    backup_type VARCHAR(100) NOT NULL,
    file_size VARCHAR(50) NOT NULL,
    created_by INTEGER NULL REFERENCES users(user_id) ON DELETE SET NULL,
    status VARCHAR(50) NOT NULL CHECK (status IN ('Success', 'Failed')),
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- 15. login_attempts
CREATE TABLE IF NOT EXISTS login_attempts (
    id SERIAL PRIMARY KEY,
    ip VARCHAR(45) NOT NULL,
    username VARCHAR(255) NOT NULL,
    attempted_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_login_attempts_ip ON login_attempts(ip);
CREATE INDEX IF NOT EXISTS idx_login_attempts_attempted_at ON login_attempts(attempted_at);

-- 16. pull_outs
CREATE TABLE IF NOT EXISTS pull_outs (
    pull_out_id SERIAL PRIMARY KEY,
    student_id INTEGER NOT NULL REFERENCES students(student_id) ON DELETE CASCADE,
    scan_id INTEGER NULL REFERENCES scan_logs(scan_id) ON DELETE SET NULL,
    picked_up_by VARCHAR(255) NOT NULL,
    relationship VARCHAR(100) NULL,
    purpose TEXT NULL,
    status VARCHAR(50) NOT NULL DEFAULT 'Out' CHECK (status IN ('Out', 'Returned')),
    created_by INTEGER NULL REFERENCES users(user_id) ON DELETE SET NULL,
    time_pulled TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    time_returned TIMESTAMP NULL,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_pull_outs_student ON pull_outs(student_id);
CREATE INDEX IF NOT EXISTS idx_pull_outs_status ON pull_outs(status);

-- 17. excuses
CREATE TABLE IF NOT EXISTS excuses (
    excuse_id SERIAL PRIMARY KEY,
    student_id INTEGER NOT NULL REFERENCES students(student_id) ON DELETE CASCADE,
    attendance_id INTEGER NULL REFERENCES attendance(attendance_id) ON DELETE SET NULL,
    excuse_date DATE NOT NULL,
    type VARCHAR(100) NOT NULL,
    reason TEXT NOT NULL,
    document_path VARCHAR(255) NULL,
    submitted_by VARCHAR(100) NOT NULL DEFAULT 'Parent',
    status VARCHAR(50) NOT NULL DEFAULT 'Pending' CHECK (status IN ('Pending', 'Teacher Approved', 'Approved', 'Rejected')),
    teacher_reviewed_by INTEGER NULL REFERENCES users(user_id) ON DELETE SET NULL,
    teacher_reviewed_at TIMESTAMP NULL,
    approved_by INTEGER NULL REFERENCES users(user_id) ON DELETE SET NULL,
    approved_at TIMESTAMP NULL,
    rejection_reason TEXT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_excuses_student ON excuses(student_id);
CREATE INDEX IF NOT EXISTS idx_excuses_status ON excuses(status);
CREATE INDEX IF NOT EXISTS idx_excuses_date ON excuses(excuse_date);

-- 18. system_settings
CREATE TABLE IF NOT EXISTS system_settings (
    setting_id SERIAL PRIMARY KEY,
    school_name VARCHAR(255) NULL,
    school_address TEXT NULL,
    school_year VARCHAR(20) NULL,
    registration_enabled CHAR(1) NOT NULL DEFAULT 't' CHECK (registration_enabled IN ('t', 'f')),
    email_notification_enabled CHAR(1) NOT NULL DEFAULT 'f' CHECK (email_notification_enabled IN ('t', 'f')),
    school_start_time TIME NOT NULL DEFAULT '07:30:00',
    grace_period_minutes INTEGER NOT NULL DEFAULT 10,
    smtp_host VARCHAR(255) NULL,
    smtp_port INTEGER NULL DEFAULT 587,
    smtp_username VARCHAR(255) NULL,
    smtp_password VARCHAR(255) NULL,
    smtp_from_email VARCHAR(255) NULL,
    barcode_prefix VARCHAR(20) NULL DEFAULT '2026-',
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- 19. student_parents
CREATE TABLE IF NOT EXISTS student_parents (
    student_id INTEGER NOT NULL REFERENCES students(student_id) ON DELETE CASCADE,
    parent_id INTEGER NOT NULL REFERENCES parents(parent_id) ON DELETE CASCADE,
    relationship VARCHAR(100) NULL,
    PRIMARY KEY (student_id, parent_id)
);

-- ─── SEED DATA ───

INSERT INTO roles (role_name) VALUES
    ('Admin'), ('Teacher'), ('Staff'), ('Viewer'), ('Adviser')
ON CONFLICT (role_name) DO NOTHING;

INSERT INTO system_settings (school_name) VALUES ('School Name')
ON CONFLICT DO NOTHING;
