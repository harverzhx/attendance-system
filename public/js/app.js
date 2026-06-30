const app = {
    currentPage: '',
    currentData: null,

    init() {
        // Favicon
        const favicon = document.querySelector('link[rel="icon"]') || document.createElement('link');
        favicon.rel = 'icon';
        favicon.href = '/img/LogoINSH.png';
        if (!favicon.parentNode) document.head.appendChild(favicon);

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

        // Back-to-top button
        this.initBackToTop();

        // Floating action button
        this.initFab();

        // Keyboard shortcuts
        this.initShortcuts();

        // Auto-init tables (sortable, pagination)
        setTimeout(() => this.initTables(), 100);

        // Watch for dynamically loaded tables (debounced)
        let tableTimer;
        const tableObserver = new MutationObserver(() => {
            clearTimeout(tableTimer);
            tableTimer = setTimeout(() => {
                this.initTables();
                if (window.innerWidth <= 768) this.cardifyTables();
            }, 300);
        });
        tableObserver.observe(document.body, { childList: true, subtree: true });
        setTimeout(() => tableObserver.disconnect(), 30000);
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

    initTables() {
        document.querySelectorAll('table.table').forEach(table => {
            this.makeSortable(table);
            this.paginateTable(table, 25);
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
            <div style="display:flex;align-items:center;gap:10px;">
                <img src="/img/LogoINSH.png" alt="Logo" style="width:38px;height:38px;border-radius:6px;object-fit:contain;">
                <div>
                    <h3 style="margin:0;font-size:15px;line-height:1.2;">Ilaya NHS</h3>
                    <small>${role || ''}</small>
                </div>
            </div>
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
            <a href="#" id="darkModeToggle"><span>🌙</span> Dark Mode</a>
            <a href="#" onclick="auth.logout()"><span>🚪</span> Logout</a>
        </div>`;

        sidebar.innerHTML = html;

        // Dark mode toggle
        const dmBtn = document.getElementById('darkModeToggle');
        if (dmBtn) {
            const isDark = localStorage.getItem('darkMode') === 'true';
            if (isDark) document.body.classList.add('dark-mode');
            dmBtn.innerHTML = isDark ? '<span>☀️</span> Light Mode' : '<span>🌙</span> Dark Mode';
            dmBtn.addEventListener('click', (e) => {
                e.preventDefault();
                const on = document.body.classList.toggle('dark-mode');
                localStorage.setItem('darkMode', on);
                dmBtn.innerHTML = on ? '<span>☀️</span> Light Mode' : '<span>🌙</span> Dark Mode';
            });
        }

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

        // Insert breadcrumbs container after topbar
        let crumbs = document.getElementById('breadcrumbs');
        if (!crumbs) {
            crumbs = document.createElement('div');
            crumbs.id = 'breadcrumbs';
            topbar.parentNode.insertBefore(crumbs, topbar.nextSibling);
        }
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

    initBackToTop() {
        const btn = document.createElement('button');
        btn.id = 'back-to-top';
        btn.innerHTML = '&#8593;';
        btn.setAttribute('aria-label', 'Back to top');
        btn.addEventListener('click', () => window.scrollTo({ top: 0, behavior: 'smooth' }));
        document.body.appendChild(btn);
        let ticking = false;
        window.addEventListener('scroll', () => {
            if (!ticking) {
                window.requestAnimationFrame(() => {
                    btn.classList.toggle('visible', window.scrollY > 300);
                    ticking = false;
                });
                ticking = true;
            }
        }, { passive: true });
        // Check initial state
        if (window.scrollY > 300) btn.classList.add('visible');
    },

    initFab() {
        const role = auth.getRole();
        const actions = {
            Admin: [
                { icon: '🎓', text: 'Add Student', href: '/pages/students.html#add' },
                { icon: '👥', text: 'Add User', href: '/pages/users.html#add' },
                { icon: '📝', text: 'Approve Registration', href: '/pages/registrations.html' },
                { icon: '📚', text: 'New Section', href: '/pages/sections.html#add' },
                { icon: '📟', text: 'Scan Entry/Exit', href: '/pages/scanner.html' },
            ],
            Teacher: [
                { icon: '📝', text: 'Mark Attendance', href: '/pages/class-attendance.html' },
                { icon: '🎓', text: 'My Students', href: '/pages/students.html' },
                { icon: '🚪', text: 'Create Pull-Out', href: '/pages/pull-outs.html#add' },
            ],
            Adviser: [
                { icon: '📝', text: 'Mark Attendance', href: '/pages/class-attendance.html' },
                { icon: '🎓', text: 'My Students', href: '/pages/students.html' },
                { icon: '📜', text: 'Excuse Slips', href: '/pages/excuses.html' },
            ],
            Staff: [
                { icon: '📟', text: 'Scan Entry/Exit', href: '/pages/scanner.html' },
            ],
            Parent: [
                { icon: '📝', text: 'Submit Excuse', href: '/pages/parent-excuse.html' },
                { icon: '📋', text: 'View Attendance', href: '/pages/parent-attendance.html' },
            ],
        };
        const items = actions[role] || [];
        if (!items.length) return;

        // Overlay
        let overlay = document.getElementById('fab-overlay');
        if (!overlay) {
            overlay = document.createElement('div');
            overlay.id = 'fab-overlay';
            document.body.appendChild(overlay);
        }

        // Menu
        let menu = document.getElementById('fab-menu');
        if (!menu) {
            menu = document.createElement('div');
            menu.id = 'fab-menu';
            document.body.appendChild(menu);
        }
        menu.innerHTML = items.map(a =>
            `<a class="fab-item" href="${a.href}"><span>${a.icon}</span> ${a.text}</a>`
        ).join('');

        // Button
        let btn = document.getElementById('fab');
        if (!btn) {
            btn = document.createElement('button');
            btn.id = 'fab';
            btn.setAttribute('aria-label', 'Quick actions');
            document.body.appendChild(btn);
        }
        btn.textContent = '+';

        const toggle = () => {
            const open = btn.classList.toggle('open');
            menu.classList.toggle('open', open);
            overlay.classList.toggle('open', open);
        };
        btn.addEventListener('click', (e) => { e.stopPropagation(); toggle(); });
        overlay.addEventListener('click', () => { btn.classList.remove('open'); menu.classList.remove('open'); overlay.classList.remove('open'); });
        // Close on Escape
        menu.addEventListener('keydown', (e) => { if (e.key === 'Escape') toggle(); });
    },

    initShortcuts() {
        let lastG = 0;
        document.addEventListener('keydown', (e) => {
            // Skip if typing in an input/textarea/select
            const tag = e.target.tagName;
            if (tag === 'INPUT' || tag === 'TEXTAREA' || tag === 'SELECT') return;
            // Show help on ?
            if (e.key === '?' && !e.ctrlKey && !e.metaKey) {
                e.preventDefault();
                this.showShortcutsHelp();
                return;
            }
            // Go-to navigation: press g then a letter within 1s
            if (e.key === 'g' && !e.ctrlKey && !e.metaKey) {
                e.preventDefault();
                lastG = Date.now();
                return;
            }
            if (lastG && Date.now() - lastG < 1000) {
                lastG = 0;
                const map = {
                    'd': '/pages/dashboard.html',
                    's': '/pages/students.html',
                    'u': '/pages/users.html',
                    'r': '/pages/registrations.html',
                    'a': '/pages/attendance-records.html',
                    'c': '/pages/class-attendance.html',
                    'p': '/pages/pull-outs.html',
                    'e': '/pages/excuses.html',
                    'l': '/pages/scan-logs.html',
                    't': '/pages/settings.html',
                    'h': '/pages/sections.html',
                    'b': '/pages/backups.html',
                };
                const href = map[e.key.toLowerCase()];
                if (href) { e.preventDefault(); window.location.href = href; }
            }
        });
    },

    showShortcutsHelp() {
        const shortcuts = [
            { keys: 'g then d', desc: 'Dashboard' },
            { keys: 'g then s', desc: 'Students' },
            { keys: 'g then u', desc: 'Users' },
            { keys: 'g then r', desc: 'Registrations' },
            { keys: 'g then a', desc: 'Attendance Records' },
            { keys: 'g then c', desc: 'Class Attendance' },
            { keys: 'g then p', desc: 'Pull-Outs' },
            { keys: 'g then e', desc: 'Excuses' },
            { keys: 'g then l', desc: 'Scan Logs' },
            { keys: 'g then t', desc: 'Settings' },
            { keys: 'g then h', desc: 'Sections' },
            { keys: 'g then b', desc: 'Backups' },
            { keys: '?', desc: 'Show this help' },
        ];
        const overlay = document.createElement('div');
        overlay.className = 'confirm-overlay';
        overlay.innerHTML = `
            <div class="confirm-dialog" style="max-width:420px;">
                <div style="display:flex;justify-content:space-between;align-items:center;margin-bottom:12px;">
                    <h3 style="margin:0;">⌨️ Keyboard Shortcuts</h3>
                    <button onclick="this.closest('.confirm-overlay').remove()" style="background:none;border:none;font-size:20px;cursor:pointer;color:var(--gray);">×</button>
                </div>
                <div style="display:grid;grid-template-columns:auto 1fr;gap:6px 16px;font-size:14px;">
                    ${shortcuts.map(s => `<code style="background:var(--light);padding:2px 6px;border-radius:4px;font-size:13px;">${s.keys}</code><span>${s.desc}</span>`).join('')}
                </div>
                <p style="margin-top:12px;font-size:12px;color:var(--gray);">Press <code>?</code> anytime to show this help.</p>
            </div>`;
        document.body.appendChild(overlay);
        overlay.addEventListener('click', (e) => { if (e.target === overlay) overlay.remove(); });
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
        document.title = (titles[page] || 'Page') + ' - Ilaya NHS';

        // Breadcrumbs
        this.renderBreadcrumbs(page);
    },

    renderBreadcrumbs(page) {
        const container = document.getElementById('breadcrumbs');
        if (!container) return;
        const crumbs = [
            { text: 'Home', href: '/pages/dashboard.html' },
        ];
        const map = {
            'users': 'System Users', 'registrations': 'Registration Approval',
            'students': 'Student Management', 'parents': 'Parent Management',
            'sections': 'Section Management', 'scanner': 'Attendance Scanner',
            'class-attendance': 'Class Attendance', 'scan-logs': 'Scan Logs',
            'attendance-records': 'Attendance Records', 'reports': 'Reports',
            'adviser-dashboard': 'Adviser Dashboard', 'parent-portal': 'Parent Portal',
            'parent-attendance': 'Attendance History', 'parent-notifications': 'Notifications',
            'subjects': 'Subject Management', 'parent-excuse': 'Submit Excuse',
            'pull-outs': 'Pull-Out Management', 'excuses': 'Excuse Slips',
            'email-logs': 'Email Logs', 'audit-logs': 'Audit Logs',
            'settings': 'System Settings', 'backups': 'Backup Management',
        };
        if (page === 'dashboard' || page === 'parent-portal' || page === 'adviser-dashboard') {
            container.innerHTML = '';
            return;
        }
        const label = map[page];
        if (label) {
            crumbs.push({ text: label });
            container.innerHTML = crumbs.map((c, i) =>
                c.href ? `<a href="${c.href}">${c.text}</a>` : `<span>${c.text}</span>`
            ).join('<span class="crumb-sep">›</span>');
        } else {
            container.innerHTML = '';
        }
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

    // ── Table sort ──
    makeSortable(table) {
        if (!table || table.dataset.sortable) return;
        table.dataset.sortable = '1';
        const tbody = table.querySelector('tbody');
        if (!tbody) return;
        const thead = table.querySelector('thead');
        if (!thead) return;
        thead.querySelectorAll('th').forEach((th, colIdx) => {
            if (th.querySelector('input,select,button')) return;
            th.style.cursor = 'pointer';
            th.style.userSelect = 'none';
            th.addEventListener('click', () => {
                const isAsc = th.getAttribute('data-sort-dir') === 'asc';
                thead.querySelectorAll('th').forEach(h => h.removeAttribute('data-sort-dir'));
                th.setAttribute('data-sort-dir', isAsc ? 'desc' : 'asc');
                const rows = [...tbody.querySelectorAll('tr')];
                const multiplier = isAsc ? -1 : 1;
                rows.sort((a, b) => {
                    const aVal = (a.cells[colIdx]?.textContent || '').trim();
                    const bVal = (b.cells[colIdx]?.textContent || '').trim();
                    const aNum = parseFloat(aVal.replace(/[^0-9.\-]/g, ''));
                    const bNum = parseFloat(bVal.replace(/[^0-9.\-]/g, ''));
                    if (!isNaN(aNum) && !isNaN(bNum)) return (aNum - bNum) * multiplier;
                    return aVal.localeCompare(bVal, undefined, { numeric: true }) * multiplier;
                });
                rows.forEach(r => tbody.appendChild(r));
                // Re-init pagination so it captures the new row order
                this.paginateTable(table, 25, true);
            });
        });
    },

    // ── Table pagination ──
    paginateTable(table, perPage = 25, force) {
        if (!table || (table.dataset.paginated && !force)) return;
        table.dataset.paginated = '1';
        const tbody = table.querySelector('tbody');
        if (!tbody) return;
        const rows = [...tbody.querySelectorAll('tr')];
        if (rows.length <= perPage) return;
        const wrapper = table.closest('.table-responsive') || table.parentNode;
        // Remove old controls if re-initializing
        const old = wrapper.querySelector('.pagination-controls');
        if (old && force) old.remove();
        let controls = wrapper.querySelector('.pagination-controls');
        if (!controls) {
            controls = document.createElement('div');
            controls.className = 'pagination-controls';
            wrapper.appendChild(controls);
        }
        // Restore all rows to visible when re-initializing
        if (force) rows.forEach(r => r.style.display = '');
        let currentPage = 1;
        const totalPages = Math.ceil(rows.length / perPage);

        function showPage(page) {
            currentPage = Math.max(1, Math.min(page, totalPages));
            const start = (currentPage - 1) * perPage;
            const end = start + perPage;
            rows.forEach((r, i) => r.style.display = (i >= start && i < end) ? '' : 'none');
            controls.innerHTML = `
                <button class="btn btn-sm btn-outline" ${currentPage <= 1 ? 'disabled' : ''} data-page="${currentPage - 1}">&laquo; Prev</button>
                <span class="pagination-info">Page ${currentPage} of ${totalPages} (${rows.length} records)</span>
                <button class="btn btn-sm btn-outline" ${currentPage >= totalPages ? 'disabled' : ''} data-page="${currentPage + 1}">Next &raquo;</button>
            `;
            controls.querySelectorAll('button:not([disabled])').forEach(btn => {
                btn.addEventListener('click', () => showPage(parseInt(btn.dataset.page)));
            });
        }
        showPage(1);
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
