const app = {
    currentPage: '',
    currentData: null,

    init() {
        document.addEventListener('DOMContentLoaded', () => {
            this.initSidebar();
            this.initTopbar();

            const page = window.location.pathname.split('/').pop().replace('.html', '');
            this.currentPage = page;
            this.loadPage(page);

            this.cardifyTables();

            // Second pass for async-loaded tables
            setTimeout(() => this.cardifyTables(), 1500);
        });

        // Re-check bottom nav on resize
        let resizeTimer;
        window.addEventListener('resize', () => {
            clearTimeout(resizeTimer);
            resizeTimer = setTimeout(() => {
                const nav = document.querySelector('.bottom-nav');
                if (window.innerWidth >= 768) {
                    if (nav) nav.style.display = 'none';
                } else {
                    if (nav) nav.style.display = 'block';
                }
            }, 200);
        });

        // Watch for dynamically loaded tables to cardify them (mobile only, debounced)
        if (window.innerWidth <= 768) {
            let mobDebounce;
            const mobObserver = new MutationObserver(() => {
                clearTimeout(mobDebounce);
                mobDebounce = setTimeout(() => this.cardifyTables(), 300);
            });
            mobObserver.observe(document.body, { childList: true, subtree: true });
            setTimeout(() => mobObserver.disconnect(), 30000);
        }
    },

    cardifyTables() {
        if (window.innerWidth > 768) return;
        document.querySelectorAll('.table-responsive table').forEach(table => {
            // Skip if already processed
            if (table.dataset.cardified) return;
            const headers = [];
            table.querySelectorAll('thead th').forEach(th => {
                headers.push(th.textContent.trim());
            });
            if (headers.length === 0) return;
            table.querySelectorAll('tbody tr').forEach(tr => {
                tr.querySelectorAll('td').forEach((td, i) => {
                    if (headers[i]) {
                        td.setAttribute('data-label', headers[i]);
                    }
                });
            });
            table.dataset.cardified = '1';
        });
    },

    initSidebar() {
        const sidebar = document.getElementById('sidebar');
        if (!sidebar) return;

        const role = auth.getRole();
        const menus = {
            Admin: [
                { label: 'Navigation', header: true },
                { icon: '📊', text: 'Dashboard', href: '/pages/dashboard.html' },
                { icon: '👥', text: 'Users', href: '/pages/users.html' },
                { icon: '📝', text: 'Registrations', href: '/pages/registrations.html' },
                { icon: '🎓', text: 'Students', href: '/pages/students.html' },
                { icon: '👪', text: 'Parents', href: '/pages/parents.html' },
                { icon: '📚', text: 'Sections', href: '/pages/sections.html' },
                { icon: '📖', text: 'Subjects', href: '/pages/subjects.html' },
                { icon: '📋', text: 'Attendance', href: '/pages/attendance-records.html' },
                { icon: '📄', text: 'Reports', href: '/pages/reports.html' },
                { icon: '📝', text: 'Class Attendance', href: '/pages/class-attendance.html' },
                { icon: '📟', text: 'Scan Logs', href: '/pages/scan-logs.html' },
                { icon: '🚪', text: 'Pull-Outs', href: '/pages/pull-outs.html' },
                { icon: '📧', text: 'Email Logs', href: '/pages/email-logs.html' },
                { icon: '📜', text: 'Excuses', href: '/pages/excuses.html' },
                { icon: '📜', text: 'Audit Logs', href: '/pages/audit-logs.html' },
                { icon: '⚙️', text: 'Settings', href: '/pages/settings.html' },
                { icon: '💾', text: 'Backups', href: '/pages/backups.html' },
            ],
            Teacher: [
                { label: 'Navigation', header: true },
                { icon: '📊', text: 'Dashboard', href: '/pages/dashboard.html' },
                { icon: '📝', text: 'Mark Attendance', href: '/pages/class-attendance.html' },
                { icon: '📋', text: 'Attendance Records', href: '/pages/attendance-records.html' },
                { icon: '🎓', text: 'My Students', href: '/pages/students.html' },
                { icon: '📄', text: 'Reports', href: '/pages/reports.html' },
                { icon: '🚪', text: 'Pull-Outs', href: '/pages/pull-outs.html' },
                { icon: '📜', text: 'Excuses', href: '/pages/excuses.html' },
            ],
            Adviser: [
                { label: 'Navigation', header: true },
                { icon: '📊', text: 'Dashboard', href: '/pages/adviser-dashboard.html' },
                { icon: '📝', text: 'Mark Attendance', href: '/pages/class-attendance.html' },
                { icon: '📋', text: 'Attendance Records', href: '/pages/attendance-records.html' },
                { icon: '🎓', text: 'My Students', href: '/pages/students.html' },
                { icon: '📄', text: 'Reports', href: '/pages/reports.html' },
                { icon: '🚪', text: 'Pull-Outs', href: '/pages/pull-outs.html' },
                { icon: '📜', text: 'Excuses', href: '/pages/excuses.html' },
            ],
            Staff: [
                { label: 'Navigation', header: true },
                { icon: '📊', text: 'Dashboard', href: '/pages/dashboard.html' },
                { icon: '📋', text: 'Scanner', href: '/pages/scanner.html' },
                { icon: '📋', text: 'Records', href: '/pages/attendance-records.html' },
            ],
            Viewer: [
                { label: 'Navigation', header: true },
                { icon: '📊', text: 'Dashboard', href: '/pages/dashboard.html' },
                { icon: '📋', text: 'Attendance', href: '/pages/attendance-records.html' },
            ],
            Parent: [
                { label: 'Navigation', header: true },
                { icon: '🏠', text: 'Dashboard', href: '/pages/parent-portal.html' },
                { icon: '📋', text: 'Attendance', href: '/pages/parent-attendance.html' },
                { icon: '🔔', text: 'Notifications', href: '/pages/parent-notifications.html' },
                { icon: '📝', text: 'Excuse Slip', href: '/pages/parent-excuse.html' },
            ],
        };

        const items = menus[role] || menus.Viewer;
        const currentPath = window.location.pathname;

        let html = `<div class="sidebar-header">
            <h3>🏫 Gate Attendance</h3>
            <small>${role || ''}</small>
        </div><div class="sidebar-menu">`;

        items.forEach(item => {
            if (item.header) {
                html += `<div class="menu-label">${item.label}</div>`;
            } else {
                const active = currentPath.includes(item.href) ? 'active' : '';
                html += `<a href="${item.href}" class="${active}"><span>${item.icon}</span> ${item.text}</a>`;
            }
        });

        html += `<div class="menu-label" style="margin-top:20px">Account</div>
            <a href="#" onclick="auth.logout()"><span>🚪</span> Logout</a>
        </div>`;

        sidebar.innerHTML = html;

        // Mobile bottom navigation
        this.initBottomNav(items);
    },

    initBottomNav(menuItems) {
        const existing = document.querySelector('.bottom-nav');
        if (existing) existing.remove();

        if (window.innerWidth >= 768) return;

        const nav = document.createElement('nav');
        nav.className = 'bottom-nav';

        const maxItems = 4;
        const visible = menuItems.filter(i => !i.header).slice(0, maxItems);
        const hasMore = menuItems.filter(i => !i.header).length > maxItems;

        let inner = '<div class="bottom-nav-inner">';
        visible.forEach(item => {
            const active = window.location.pathname.includes(item.href) ? 'active' : '';
            inner += `<a href="${item.href}" class="bottom-nav-item ${active}">
                <span class="nav-icon">${item.icon}</span>
                <span class="nav-label">${item.text}</span>
            </a>`;
        });
        if (hasMore) {
            inner += `<button class="bottom-nav-item" onclick="app.toggleSidebar()">
                <span class="nav-icon">☰</span>
                <span class="nav-label">More</span>
            </button>`;
        }
        inner += '</div>';
        nav.innerHTML = inner;
        document.body.appendChild(nav);
    },

    initTopbar() {
        const topbar = document.getElementById('topbar');
        if (!topbar) return;

        const user = auth.getUser();
        topbar.innerHTML = `
            <button class="btn btn-outline btn-sm d-md-none" onclick="app.toggleSidebar()">☰</button>
            <h2 id="page-title">Dashboard</h2>
            <div class="topbar-right">
                <span class="user-info">${user ? user.first_name + ' ' + user.last_name : ''}</span>
                <button class="btn btn-outline btn-sm" onclick="auth.logout()">Logout</button>
            </div>
        `;
    },

    toggleSidebar() {
        const sidebar = document.getElementById('sidebar');
        const backdrop = document.getElementById('sidebar-backdrop') || (() => {
            const el = document.createElement('div');
            el.id = 'sidebar-backdrop';
            el.className = 'sidebar-backdrop';
            el.addEventListener('click', () => {
                sidebar.classList.remove('open');
                el.classList.remove('open');
            });
            document.body.appendChild(el);
            return el;
        })();
        const isOpen = sidebar.classList.toggle('open');
        backdrop.classList.toggle('open', isOpen);
    },

    loadPage(page) {
        const titles = {
            'dashboard': 'Dashboard',
            'login': 'Login',
            'register': 'Register',
            'users': 'User Management',
            'registrations': 'Registration Approval',
            'students': 'Student Management',
            'parents': 'Parent Management',
            'sections': 'Section Management',
            'scanner': 'Attendance Scanner',
            'class-attendance': 'Class Attendance',
            'scan-logs': 'Scan Logs',
            'attendance-records': 'Attendance Records',
            'reports': 'Reports',
            'adviser-dashboard': 'Adviser Dashboard',
            'parent-portal': 'Parent Portal',
            'parent-attendance': 'Attendance History',
            'parent-notifications': 'Notifications',
            'subjects': 'Subject Management',
            'parent-excuse': 'Submit Excuse',
            'pull-outs': 'Pull-Out Management',
            'excuses': 'Excuse Slips',
            'email-logs': 'Email Logs',
            'audit-logs': 'Audit Logs',
            'settings': 'System Settings',
            'backups': 'Backup Management',
        };

        const titleEl = document.getElementById('page-title');
        if (titleEl) titleEl.textContent = titles[page] || 'Page';
    },

    showLoading(container) {
        container.innerHTML = '<div class="loading">Loading...</div>';
    },

    showError(container, message) {
        container.innerHTML = `<div class="alert alert-danger">${message}</div>`;
    },

    showAlert(message, type = 'success') {
        const isError = type === 'danger';
        const iconPath = isError
            ? '<path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm1 15h-2v-2h2v2zm0-4h-2V7h2v6z" fill="#dc2626"/>'
            : '<path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm-2 15l-5-5 1.41-1.41L10 14.17l7.59-7.59L19 8l-9 9z" fill="#16a34a"/>';
        const overlay = document.createElement('div');
        overlay.className = 'confirm-overlay';
        overlay.innerHTML = `
            <div class="confirm-dialog" role="alertdialog" aria-modal="true">
                <div class="confirm-dialog__icon">${iconPath ? `<svg width="40" height="40" viewBox="0 0 24 24" fill="none">${iconPath}</svg>` : ''}</div>
                <p class="confirm-dialog__message">${message}</p>
                <div class="confirm-dialog__actions">
                    <button class="btn ${isError ? 'btn-danger' : 'btn-primary'} confirm-ok">OK</button>
                </div>
            </div>`;
        document.body.appendChild(overlay);
        const ok = overlay.querySelector('.confirm-ok');
        const cleanup = () => overlay.remove();
        ok.addEventListener('click', cleanup);
        overlay.addEventListener('keydown', (e) => { if (e.key === 'Escape') cleanup(); });
        overlay.addEventListener('click', (e) => { if (e.target === overlay) cleanup(); });
        ok.focus();
        if (type === 'success') setTimeout(cleanup, 3000);
    },

    showFormAlert(message, type = 'success', containerId = 'form-alert') {
        const container = document.getElementById(containerId);
        if (!container) return;
        this._showFormAlert(container, message, type);
    },

    showFormErrors(errors, containerId = 'form-alert') {
        const container = document.getElementById(containerId);
        if (!container) return;
        const list = errors.map(e =>
            `<li><a href="#${e.fieldId}">${e.message}</a></li>`
        ).join('');
        container.innerHTML = `
            <div class="rpl-form-alert rpl-form-alert--error" role="alert" tabindex="-1">
                <div class="rpl-form-alert__inner">
                    <div class="rpl-form-alert__icon">
                        <svg width="24" height="24" viewBox="0 0 24 24" fill="none">
                            <path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm1 15h-2v-2h2v2zm0-4h-2V7h2v6z" fill="currentColor"/>
                        </svg>
                    </div>
                    <div class="rpl-form-alert__content">
                        <h2 class="rpl-form-alert__title">There is a problem</h2>
                        <ul class="rpl-form-alert__list">${list}</ul>
                    </div>
                </div>
            </div>`;
        container.style.display = 'block';
        container.querySelector('.rpl-form-alert')?.focus();
    },

    _showFormAlert(container, message, type) {
        const isError = type === 'danger';
        const iconPath = isError
            ? '<path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm1 15h-2v-2h2v2zm0-4h-2V7h2v6z" fill="currentColor"/>'
            : '<path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm-2 15l-5-5 1.41-1.41L10 14.17l7.59-7.59L19 8l-9 9z" fill="currentColor"/>';
        container.innerHTML = `
            <div class="rpl-form-alert rpl-form-alert--${isError ? 'error' : 'success'}" role="alert" tabindex="-1">
                <div class="rpl-form-alert__inner">
                    <div class="rpl-form-alert__icon">
                        <svg width="24" height="24" viewBox="0 0 24 24" fill="none">${iconPath}</svg>
                    </div>
                    <div class="rpl-form-alert__content">
                        ${isError ? `<h2 class="rpl-form-alert__title">There is a problem</h2><p class="rpl-form-alert__text">${message}</p>` : `<p class="rpl-form-alert__text">${message}</p>`}
                    </div>
                </div>
            </div>`;
        container.style.display = 'block';
        container.querySelector('.rpl-form-alert')?.focus();
    },

    localDate() {
        const d = new Date();
        return d.getFullYear() + '-' + String(d.getMonth() + 1).padStart(2, '0') + '-' + String(d.getDate()).padStart(2, '0');
    },

    formatDate(dateStr) {
        if (!dateStr) return '-';
        const d = new Date(dateStr);
        return d.toLocaleDateString('en-US', { year: 'numeric', month: 'short', day: 'numeric' });
    },

    formatTime(timeStr) {
        if (!timeStr) return '-';
        if (timeStr.includes('T')) {
            const d = new Date(timeStr);
            if (!isNaN(d.getTime())) {
                const h = d.getHours(), m = String(d.getMinutes()).padStart(2, '0');
                const ampm = h >= 12 ? 'PM' : 'AM';
                return `${h % 12 || 12}:${m} ${ampm}`;
            }
        }
        const parts = timeStr.split(' ');
        const timePart = parts.length > 1 ? parts[1] : parts[0];
        const [h, m] = timePart.split(':');
        const hour = parseInt(h);
        const ampm = hour >= 12 ? 'PM' : 'AM';
        const h12 = hour % 12 || 12;
        return `${h12}:${m} ${ampm}`;
    },

    formatDateTime(dt) {
        if (!dt) return '-';
        const d = new Date(dt + (dt.includes('T') ? '' : 'T00:00:00'));
        if (isNaN(d.getTime())) return dt;
        const dateStr = d.toLocaleDateString('en-PH', { month: 'short', day: 'numeric', year: 'numeric' });
        const h = d.getHours(), m = String(d.getMinutes()).padStart(2, '0');
        const ampm = h >= 12 ? 'PM' : 'AM';
        const h12 = h % 12 || 12;
        return `${dateStr} ${h12}:${m} ${ampm}`;
    },

    statusBadge(status) {
        const map = {
            'Present': 'badge-success',
            'Late': 'badge-warning',
            'Absent': 'badge-danger',
            'Active': 'badge-success',
            'Inactive': 'badge-secondary',
            'Pending': 'badge-warning',
            'Approved': 'badge-success',
            'Rejected': 'badge-danger',
            'Sent': 'badge-success',
            'Failed': 'badge-danger',
        };
        const cls = map[status] || 'badge-info';
        return `<span class="badge ${cls}">${status}</span>`;
    },

    async confirmAction(message) {
        return new Promise((resolve) => {
            const overlay = document.createElement('div');
            overlay.className = 'confirm-overlay';
            overlay.innerHTML = `
                <div class="confirm-dialog" role="alertdialog" aria-modal="true">
                    <div class="confirm-dialog__icon">
                        <svg width="40" height="40" viewBox="0 0 24 24" fill="none">
                            <path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm1 15h-2v-2h2v2zm0-4h-2V7h2v6z" fill="#dc2626"/>
                        </svg>
                    </div>
                    <p class="confirm-dialog__message">${message}</p>
                    <div class="confirm-dialog__actions">
                        <button class="btn btn-secondary confirm-cancel">Cancel</button>
                        <button class="btn btn-danger confirm-ok">OK</button>
                    </div>
                </div>`;
            document.body.appendChild(overlay);
            const ok = overlay.querySelector('.confirm-ok');
            const cancel = overlay.querySelector('.confirm-cancel');
            const cleanup = (result) => {
                overlay.remove();
                resolve(result);
            };
            ok.addEventListener('click', () => cleanup(true));
            cancel.addEventListener('click', () => cleanup(false));
            overlay.addEventListener('keydown', (e) => {
                if (e.key === 'Escape') cleanup(false);
            });
            overlay.addEventListener('click', (e) => {
                if (e.target === overlay) cleanup(false);
            });
            ok.focus();
        });
    },

    helpIcon(text) {
        return `<span class="help-icon" tabindex="0">?<span class="tooltip-text">${text}</span></span>`;
    },
};

document.addEventListener('keydown', function(e) {
    if (e.key === 'Escape') {
        const modals = document.querySelectorAll('div[id$="Modal"]');
        modals.forEach(el => {
            if (el.style.display !== 'none' && el.style.display !== '') {
                el.style.display = 'none';
            }
        });
    }
});

document.addEventListener('mouseover', function(e) {
    const icon = e.target.closest('.help-icon');
    if (!icon) return;
    const tip = icon.querySelector('.tooltip-text');
    if (!tip) return;

    const rect = icon.getBoundingClientRect();
    const tipW = 260;
    let left = rect.left + rect.width / 2 - tipW / 2;
    if (left < 5) left = 5;
    if (left + tipW > window.innerWidth - 5) left = window.innerWidth - tipW - 5;

    const spaceAbove = rect.top;
    const spaceBelow = window.innerHeight - rect.bottom;
    const tipH = tip.offsetHeight || 80;

    if (spaceAbove >= tipH + 15) {
        tip.style.top = (rect.top - tipH - 8) + 'px';
    } else {
        tip.style.top = (rect.bottom + 8) + 'px';
    }

    tip.style.left = left + 'px';
});



// Major-to-subjects mapping for BSED specialization filtering
app.MAJOR_SUBJECT_MAP = {
    'English': ['English','Reading and Writing','Oral Communication','Creative Writing','Creative Nonfiction','English for Academic and Professional Purposes'],
    'Filipino': ['Filipino','Komunikasyon at Pananaliksik sa Wika at Kulturang Filipino','Filipino sa Piling Larangan'],
    'Mathematics': ['Mathematics','Algebra','Geometry','Trigonometry','Statistics and Probability','General Mathematics','Business Mathematics','Pre-Calculus','Basic Calculus'],
    'Science': ['Science','Biology','Chemistry','Physics','Earth Science','Earth and Life Science','Physical Science','General Biology 1','General Biology 2','General Chemistry 1','General Chemistry 2','General Physics 1','General Physics 2'],
    'General Science': ['Science','Earth Science','Earth and Life Science','Physical Science'],
    'Biology': ['Science','Biology','General Biology 1','General Biology 2'],
    'Chemistry': ['Science','Chemistry','General Chemistry 1','General Chemistry 2'],
    'Physics': ['Science','Physics','General Physics 1','General Physics 2'],
    'Social Studies': ['Araling Panlipunan','World Religions and Belief Systems','Philippine Politics and Governance','Community Engagement, Solidarity, and Citizenship','Trends, Networks, and Critical Thinking in the 21st Century','Disciplines and Ideas in the Social Sciences','Disciplines and Ideas in the Applied Social Sciences','Understanding Culture, Society and Politics'],
    'History': ['Araling Panlipunan','Philippine Politics and Governance'],
    'Economics': ['Araling Panlipunan','Applied Economics','Business Mathematics','Organization and Management'],
    'Geography': ['Araling Panlipunan'],
    'Values Education': ['Values Education','Edukasyon sa Pagpapakatao','Personal Development','Introduction to Philosophy of the Human Person'],
    'Religious Education': ['Values Education','Edukasyon sa Pagpapakatao','World Religions and Belief Systems'],
    'SPED': [],
    'TLE': ['TLE','Bread and Pastry Production','Food and Beverage Services','Cookery','Housekeeping','Front Office Services','Dressmaking','Tailoring','Electrical Installation and Maintenance','Electronic Products Assembly and Servicing'],
    'Home Economics': ['TLE','Bread and Pastry Production','Food and Beverage Services','Cookery','Housekeeping','Front Office Services','Dressmaking','Tailoring'],
    'Industrial Arts': ['TLE','Electrical Installation and Maintenance','Electronic Products Assembly and Servicing'],
    'ICT': ['Computer Science','Empowerment Technologies','Computer Systems Servicing','Programming','Animation','Media and Information Literacy'],
    'MAPEH': ['MAPEH','Music','Arts','Physical Education','Health'],
    'Physical Education': ['Physical Education'],
    'Music Education': ['Music','MAPEH'],
    'Arts Education': ['Arts','MAPEH'],
    'Health Education': ['Health','MAPEH'],
    'Early Childhood Education': [],
    'Reading Education': ['English','Reading and Writing'],
    'Guidance and Counseling': ['Values Education','Personal Development'],
    'Library Science': ['Computer Science','Media and Information Literacy'],
    'Agricultural Education': ['Science','TLE'],
    'Fisheries Education': ['Science','TLE'],
    'Entrepreneurship Education': ['Applied Economics','Business Mathematics','Organization and Management','Principles of Marketing'],
    'Environmental Education': ['Science','Earth Science','Earth and Life Science'],
    'Other': [],
};

app.getMajorSubjects = function(specialization) {
    return this.MAJOR_SUBJECT_MAP[specialization] || [];
};

app.init();
