const auth = {
    setToken(token) {
        localStorage.setItem('auth_token', token);
    },

    getToken() {
        return localStorage.getItem('auth_token');
    },

    setUser(user) {
        localStorage.setItem('auth_user', JSON.stringify(user));
    },

    getUser() {
        const data = localStorage.getItem('auth_user');
        return data ? JSON.parse(data) : null;
    },

    isLoggedIn() {
        return !!this.getToken();
    },

    getRole() {
        const user = this.getUser();
        return user ? user.role : null;
    },

    isAdmin() { return this.getRole() === 'Admin'; },
    isTeacher() { return this.getRole() === 'Teacher'; },
    isAdviser() { return this.getRole() === 'Adviser'; },
    isStaff() { return this.getRole() === 'Staff'; },
    isViewer() { return this.getRole() === 'Viewer'; },
    isParent() { return this.getRole() === 'Parent'; },

    async login(username, password) {
        const result = await api.login(username, password);
        if (result.success && result.data) {
            this.setToken(result.data.token);
            this.setUser(result.data.user);
            return result.data.user;
        }
        throw new Error(result.message || 'Login failed');
    },

    async logout() {
        try { await api.logout(); } catch (e) {}
        localStorage.removeItem('auth_token');
        localStorage.removeItem('auth_user');
        window.location.href = '/pages/login.html';
    },

    redirectToDashboard() {
        const role = this.getRole();
        const pages = {
            Admin: '/pages/dashboard.html',
            Teacher: '/pages/dashboard.html',
            Adviser: '/pages/adviser-dashboard.html',
            Staff: '/pages/dashboard.html',
            Viewer: '/pages/dashboard.html',
            Parent: '/pages/parent-portal.html',
        };
        window.location.href = pages[role] || '/pages/login.html';
    },

    requireAuth() {
        if (!this.isLoggedIn()) {
            window.location.href = '/pages/login.html';
            return false;
        }
        return true;
    },

    requireRole(...roles) {
        if (!this.requireAuth()) return false;
        if (!roles.includes(this.getRole())) {
            window.location.href = '/pages/dashboard.html';
            return false;
        }
        return true;
    },
};
