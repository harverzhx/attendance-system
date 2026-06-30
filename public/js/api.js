const API_BASE = '/api';

const api = {
    async request(method, endpoint, data = null) {
        const token = localStorage.getItem('auth_token');
        const headers = { 'Content-Type': 'application/json' };
        if (token) headers['Authorization'] = `Bearer ${token}`;

        const config = { method, headers };
        if (data && (method === 'POST' || method === 'PUT')) {
            config.body = JSON.stringify(data);
        }

        const controller = new AbortController();
        const timeout = setTimeout(() => controller.abort(), 15000);
        config.signal = controller.signal;

        try {
            const response = await fetch(`${API_BASE}${endpoint}`, config);
            clearTimeout(timeout);
            const result = await response.json();

            if (!response.ok) {
                throw new Error(result.message || 'Request failed');
            }

            return result;
        } catch (error) {
            clearTimeout(timeout);
            if (error.name === 'AbortError') {
                throw new Error('Request timed out');
            }
            throw error;
        }
    },

    get(endpoint) { return this.request('GET', endpoint); },
    post(endpoint, data) { return this.request('POST', endpoint, data); },
    put(endpoint, data) { return this.request('PUT', endpoint, data); },
    del(endpoint) { return this.request('DELETE', endpoint); },

    // Auth
    login(username, password) { return this.post('/auth/login', { username, password }); },
    logout() { return this.post('/auth/logout'); },
    getMe() { return this.get('/auth/me'); },
    register(data) { return this.post('/registrations', data); },

    // Users
    getUsers() { return this.get('/users'); },
    getUser(id) { return this.get(`/users/${id}`); },
    createUser(data) { return this.post('/users', data); },
    updateUser(id, data) { return this.put(`/users/${id}`, data); },
    deleteUser(id) { return this.del(`/users/${id}`); },
    deleteUsers(ids) { return this.post('/users/batch-delete', { ids }); },
    activateUser(id) { return this.put(`/users/${id}/activate`); },
    deactivateUser(id) { return this.put(`/users/${id}/deactivate`); },

    // Registrations
    getRegistrations(status) {
        const q = status ? `?status=${status}` : '';
        return this.get(`/registrations${q}`);
    },
    approveRegistration(id) { return this.put(`/registrations/${id}/approve`); },
    rejectRegistration(id) { return this.put(`/registrations/${id}/reject`); },

    // Sections
    getSections() { return this.get('/sections'); },
    getSection(id) { return this.get(`/sections/${id}`); },
    createSection(data) { return this.post('/sections', data); },
    updateSection(id, data) { return this.put(`/sections/${id}`, data); },
    deleteSection(id) { return this.del(`/sections/${id}`); },
    assignAdviser(id, adviserId) { return this.put(`/sections/${id}/assign-adviser`, { adviser_id: adviserId }); },
    getSectionStudents(id) { return this.get(`/sections/${id}/students`); },

    // Students
    getStudents(filters = {}) {
        const params = new URLSearchParams();
        Object.entries(filters).forEach(([k, v]) => { if (v) params.append(k, v); });
        const q = params.toString() ? `?${params.toString()}` : '';
        return this.get(`/students${q}`);
    },
    getStudent(id) { return this.get(`/students/${id}`); },
    createStudent(data) { return this.post('/students', data); },
    updateStudent(id, data) { return this.put(`/students/${id}`, data); },
    deleteStudent(id) { return this.del(`/students/${id}`); },
    generateQR(id) { return this.post(`/students/${id}/generate-qr`); },
    generateBarcode(id) { return this.post(`/students/${id}/generate-barcode`); },

    // Parents
    getParents() { return this.get('/parents'); },
    getParent(id) { return this.get(`/parents/${id}`); },
    createParent(data) { return this.post('/parents', data); },
    updateParent(id, data) { return this.put(`/parents/${id}`, data); },
    deleteParent(id) { return this.del(`/parents/${id}`); },

    // Attendance
    scanAttendance(data) { return this.post('/attendance/scan', data); },
    getAttendance(filters = {}) {
        const params = new URLSearchParams();
        Object.entries(filters).forEach(([k, v]) => { if (v) params.append(k, v); });
        const qs = params.toString();
        return this.get(`/attendance${qs ? '?' + qs : ''}`);
    },
    getAttendanceRecord(id) { return this.get(`/attendance/${id}`); },
    updateAttendance(id, data) { return this.put(`/attendance/${id}`, data); },
    deleteAttendance(id) { return this.del(`/attendance/${id}`); },
    sendAttendanceNotification(id) { return this.post(`/attendance/${id}/notify`); },

    // Adviser
    getAdviserDashboard() { return this.get('/adviser/dashboard'); },
    getAdviserAttendance(date, sectionId) {
        let q = `?date=${date || new Date().toISOString().split('T')[0]}`;
        if (sectionId) q += `&section_id=${sectionId}`;
        return this.get(`/adviser/attendance${q}`);
    },
    getAdviserReports(sectionId, dateFrom, dateTo) {
        let q = `?date_from=${dateFrom}&date_to=${dateTo}`;
        if (sectionId) q += `&section_id=${sectionId}`;
        return this.get(`/adviser/reports${q}`);
    },

    // Parent Portal
    getParentDashboard() { return this.get('/parent/dashboard'); },
    getParentAttendance(dateFrom, dateTo) {
        let q = '';
        if (dateFrom) q += `?date_from=${dateFrom}&date_to=${dateTo || dateFrom}`;
        return this.get(`/parent/attendance${q}`);
    },
    getParentNotifications() { return this.get('/parent/notifications'); },
    getParentStudent() { return this.get('/parent/student'); },

    // Reports
    getDailyReport(date) { return this.get(`/reports/daily?date=${date || new Date().toISOString().split('T')[0]}`); },
    getMonthlyReport(year, month) { return this.get(`/reports/monthly?year=${year || new Date().getFullYear()}&month=${month || new Date().getMonth() + 1}`); },
    getStudentReport(id, dateFrom, dateTo) { return this.get(`/reports/student/${id}?date_from=${dateFrom}&date_to=${dateTo}`); },
    getSectionReport(id, dateFrom, dateTo) {
        let q = '';
        if (dateFrom) q += `?date_from=${dateFrom}&date_to=${dateTo || dateFrom}`;
        return this.get(`/reports/section/${id}${q}`);
    },
    getLateReport(dateFrom, dateTo) {
        let q = '';
        if (dateFrom) q += `?date_from=${dateFrom}&date_to=${dateTo || dateFrom}`;
        return this.get(`/reports/late${q}`);
    },
    getAbsentReport(dateFrom, dateTo) {
        let q = '';
        if (dateFrom) q += `?date_from=${dateFrom}&date_to=${dateTo || dateFrom}`;
        return this.get(`/reports/absent${q}`);
    },

    // Scan Logs
    getScanLogs(filters = {}) {
        const params = new URLSearchParams();
        Object.entries(filters).forEach(([k, v]) => { if (v) params.append(k, v); });
        return this.get(`/scan-logs?${params.toString()}`);
    },
    getScanLogSummary() { return this.get('/scan-logs/summary'); },
    getStudentsInside(date) {
        const q = date ? `?date=${date}` : '';
        return this.get(`/scan-logs/inside${q}`);
    },
    getStudentsOutside(date) {
        const q = date ? `?date=${date}` : '';
        return this.get(`/scan-logs/outside${q}`);
    },

    // Email Logs
    getEmailLogs() { return this.get('/email-logs'); },
    resendEmail(id) { return this.post(`/email-logs/${id}/resend`); },

    // Audit Logs
    getAuditLogs(filters = {}) {
        const params = new URLSearchParams();
        Object.entries(filters).forEach(([k, v]) => { if (v) params.append(k, v); });
        return this.get(`/audit-logs?${params.toString()}`);
    },

    // Settings
    getSettings() { return this.get('/settings'); },
    updateSettings(data) { return this.put('/settings', data); },

    // Backups
    getBackups() { return this.get('/backups'); },
    createBackup(type) { return this.post('/backups/create', { type }); },
    downloadBackup(id) { window.open(`${API_BASE}/backups/${id}/download`, '_blank'); },
    restoreBackup(id) { return this.post(`/backups/${id}/restore`); },
    deleteBackup(id) { return this.del(`/backups/${id}`); },

    // Dashboards
    getAdminDashboard() { return this.get('/dashboard/admin'); },
    getTeacherDashboard() { return this.get('/dashboard/teacher'); },
    getStaffDashboard() { return this.get('/dashboard/staff'); },
    getViewerDashboard() { return this.get('/dashboard/viewer'); },

    // Roles
    getRoles() { return this.get('/roles'); },
};
