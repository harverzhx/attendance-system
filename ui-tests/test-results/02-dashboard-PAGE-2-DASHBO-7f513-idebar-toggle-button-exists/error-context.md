# Instructions

- Following Playwright test failed.
- Explain why, be concise, respect Playwright best practices.
- Provide a snippet of code with the fix, if possible.

# Test info

- Name: 02-dashboard.spec.js >> PAGE 2: DASHBOARD (Admin) >> 2.27 Mobile sidebar toggle button exists
- Location: tests\02-dashboard.spec.js:223:3

# Error details

```
Error: expect(locator).toBeVisible() failed

Locator:  locator('button:has-text("☰")')
Expected: visible
Received: hidden
Timeout:  5000ms

Call log:
  - Expect "toBeVisible" with timeout 5000ms
  - waiting for locator('button:has-text("☰")')
    5 × locator resolved to <button onclick="app.toggleSidebar()" class="btn btn-outline btn-sm d-md-none">☰</button>
      - unexpected value "hidden"

```

```yaml
- heading "🏫 Gate Attendance" [level=3]
- text: Admin Navigation
- link "📊 Dashboard":
  - /url: /pages/dashboard.html
- link "👥 Users":
  - /url: /pages/users.html
- link "📝 Registrations":
  - /url: /pages/registrations.html
- link "🎓 Students":
  - /url: /pages/students.html
- link "👪 Parents":
  - /url: /pages/parents.html
- link "📚 Sections":
  - /url: /pages/sections.html
- link "📖 Subjects":
  - /url: /pages/subjects.html
- link "📋 Attendance":
  - /url: /pages/attendance-records.html
- link "📄 Reports":
  - /url: /pages/reports.html
- link "📝 Class Attendance":
  - /url: /pages/class-attendance.html
- link "📟 Scan Logs":
  - /url: /pages/scan-logs.html
- link "🚪 Pull-Outs":
  - /url: /pages/pull-outs.html
- link "📧 Email Logs":
  - /url: /pages/email-logs.html
- link "📜 Excuses":
  - /url: /pages/excuses.html
- link "📜 Audit Logs":
  - /url: /pages/audit-logs.html
- link "⚙️ Settings":
  - /url: /pages/settings.html
- link "💾 Backups":
  - /url: /pages/backups.html
- text: Account
- link "🚪 Logout":
  - /url: "#"
- heading "Dashboard" [level=2]
- text: SystemAdmin Administrator
- button "Logout"
- text: 🎓 6 Total Students 👨‍🏫 13 Teachers 👥 2 Staff 👪 29 Parents ✅ 0 Present Today ⏰ 0 Late Today ❌ 0 Absent Today 🏫 0 Inside Campus 🏠 0 Outside Campus ⏳ 6 Not Yet Entered 📥 0 Entries Today 📤 0 Exits Today Live Scan Feed (Click to view details)
- img
- strong: John Ervin Baje
- text: Grade 12 CSS EXIT - Dismissal 9:07 PM
- img
- strong: John Ervin Baje
- text: Grade 12 CSS ENTRY 9:04 PM J
- strong: Judre Dyxon Baje
- text: Grade 11 CSS ENTRY 9:03 PM J
- strong: Juan Cruz
- text: Grade 11 BPP ENTRY 9:03 PM J
- strong: Jose Garcia
- text: Grade 11 STEM ENTRY 9:03 PM A
- strong: Ana Ramos
- text: ENTRY 9:03 PM P
- strong: Pedro Torres
- text: ENTRY 9:02 PM P
- strong: Pedro Torres
- text: EXIT - Dismissal 9:02 PM A
- strong: Ana Ramos
- text: EXIT - Dismissal 9:02 PM
- img
- strong: John Ervin Baje
- text: Grade 12 CSS EXIT - Dismissal 9:00 PM P
- strong: Pedro Torres
- text: ENTRY 8:57 PM
- img
- strong: John Ervin Baje
- text: Grade 12 CSS ENTRY 8:57 PM A
- strong: Ana Ramos
- text: ENTRY 8:55 PM J
- strong: Juan Cruz
- text: Grade 11 BPP EXIT - Dismissal 8:54 PM J
- strong: Juan Cruz
- text: Grade 11 BPP ENTRY 8:54 PM
- img
- strong: John Ervin Baje
- text: Grade 12 CSS EXIT - Dismissal 8:53 PM
- img
- strong: John Ervin Baje
- text: Grade 12 CSS ENTRY 8:51 PM P
- strong: Pedro Torres
- text: ENTRY 11:56 PM A
- strong: Ana Ramos
- text: ENTRY 11:56 PM J
- strong: Jose Garcia
- text: Grade 11 STEM ENTRY 11:55 PM Inside Campus
- link "View All →":
  - /url: /pages/scan-logs.html
- paragraph: No students inside
- text: Outside Campus
- link "View All →":
  - /url: /pages/scan-logs.html
- paragraph: No students outside
- text: Exit Types Today
- paragraph: No exits today.
- text: 7-Day Attendance Trend 06-20 0/6/0 06-21 0/0/0 06-22 0/0/0 06-23 0/0/0 06-24 0/0/0 06-25 0/0/0 06-26 0/0/0 Alerts
- link "View All →":
  - /url: /pages/attendance-records.html
- heading "🚑 Medical Emergency (0)" [level=4]
- paragraph: None today
- heading "⏰ Late Today (0)" [level=4]
- paragraph: None today
- heading "⏳ Not Yet Entered (6)" [level=4]
- img
- link "John Ervin Baje":
  - /url: /pages/students.html
- text: CSS J
- link "Judre Dyxon Baje":
  - /url: /pages/students.html
- text: CSS J
- link "Juan Cruz":
  - /url: /pages/students.html
- text: BPP J
- link "Jose Garcia":
  - /url: /pages/students.html
- text: STEM A
- link "Ana Ramos":
  - /url: /pages/students.html
- text: P
- link "Pedro Torres":
  - /url: /pages/students.html
- text: Active Pull-Outs
- link "View All →":
  - /url: /pages/pull-outs.html
- paragraph: No active pull-outs
- text: Pending Excuses
- link "View All →":
  - /url: /pages/excuses.html
- paragraph: No pending excuses
- text: Parent Notification Status Today
- link "View All →":
  - /url: /pages/email-logs.html
- text: "0 Sent ✓ 0 Failed ✗ 0 Pending ⏳ Success Rate: 0% Section Attendance Ranking"
- table:
  - rowgroup:
    - row "# Section Students Present Today Rate":
      - columnheader "#"
      - columnheader "Section"
      - columnheader "Students"
      - columnheader "Present Today"
      - columnheader "Rate"
  - rowgroup:
    - row "1 Grade 11 BPP 1 0 0%":
      - cell "1"
      - cell "Grade 11 BPP":
        - strong: Grade 11 BPP
      - cell "1"
      - cell "0"
      - cell "0%"
    - row "2 Grade 11 CSS 1 0 0%":
      - cell "2"
      - cell "Grade 11 CSS":
        - strong: Grade 11 CSS
      - cell "1"
      - cell "0"
      - cell "0%"
    - row "3 Grade 11 STEM 1 0 0%":
      - cell "3"
      - cell "Grade 11 STEM":
        - strong: Grade 11 STEM
      - cell "1"
      - cell "0"
      - cell "0%"
    - row "4 Grade 12 CSS 1 0 0%":
      - cell "4"
      - cell "Grade 12 CSS":
        - strong: Grade 12 CSS
      - cell "1"
      - cell "0"
      - cell "0%"
```

# Test source

```ts
  124 |   // ──────────────────────────────────────────────────────────
  125 |   test('2.13 Alerts section visible with items', async ({ page }) => {
  126 |     await expect(page.locator('.card-header:has-text("Alerts")')).toBeVisible();
  127 |     await expect(page.locator('#alertsSection')).toBeVisible();
  128 |   });
  129 | 
  130 |   test('2.14 Alert items are clickable', async ({ page }) => {
  131 |     await page.waitForTimeout(2000);
  132 |     const alerts = page.locator('.alert-item');
  133 |     const count = await alerts.count();
  134 |     if (count > 0) {
  135 |       await alerts.first().click();
  136 |       await page.waitForTimeout(500);
  137 |     }
  138 |   });
  139 | 
  140 |   test('2.15 Alerts "View All" goes to attendance-records', async ({ page }) => {
  141 |     const link = page.locator('.card-header:has-text("Alerts") a:has-text("View All")');
  142 |     await expect(link).toHaveAttribute('href', '/pages/attendance-records.html');
  143 |   });
  144 | 
  145 |   // ──────────────────────────────────────────────────────────
  146 |   // ACTIVE PULL-OUTS
  147 |   // ──────────────────────────────────────────────────────────
  148 |   test('2.16 Active Pull-Outs section visible', async ({ page }) => {
  149 |     await expect(page.locator('.card-header:has-text("Active Pull-Outs")')).toBeVisible();
  150 |     await expect(page.locator('#pullOutsList')).toBeVisible();
  151 |   });
  152 | 
  153 |   test('2.17 Pull-Outs "View All" goes to pull-outs', async ({ page }) => {
  154 |     const link = page.locator('.card-header:has-text("Active Pull-Outs") a:has-text("View All")');
  155 |     await expect(link).toHaveAttribute('href', '/pages/pull-outs.html');
  156 |   });
  157 | 
  158 |   // ──────────────────────────────────────────────────────────
  159 |   // PENDING EXCUSES
  160 |   // ──────────────────────────────────────────────────────────
  161 |   test('2.18 Pending Excuses section visible', async ({ page }) => {
  162 |     await expect(page.locator('.card-header:has-text("Pending Excuses")')).toBeVisible();
  163 |     await expect(page.locator('#excusesList')).toBeVisible();
  164 |   });
  165 | 
  166 |   test('2.19 Excuses "View All" goes to excuses page', async ({ page }) => {
  167 |     const link = page.locator('.card-header:has-text("Pending Excuses") a:has-text("View All")');
  168 |     await expect(link).toHaveAttribute('href', '/pages/excuses.html');
  169 |   });
  170 | 
  171 |   // ──────────────────────────────────────────────────────────
  172 |   // PARENT NOTIFICATION STATUS
  173 |   // ──────────────────────────────────────────────────────────
  174 |   test('2.20 Parent Notification Status section visible', async ({ page }) => {
  175 |     await expect(page.locator('.card-header:has-text("Parent Notification Status")')).toBeVisible();
  176 |     await expect(page.locator('#emailStats')).toBeVisible();
  177 |   });
  178 | 
  179 |   test('2.21 Email Stats "View All" goes to email-logs', async ({ page }) => {
  180 |     const link = page.locator('.card-header:has-text("Parent Notification Status") a:has-text("View All")');
  181 |     await expect(link).toHaveAttribute('href', '/pages/email-logs.html');
  182 |   });
  183 | 
  184 |   // ──────────────────────────────────────────────────────────
  185 |   // SECTION ATTENDANCE RANKING
  186 |   // ──────────────────────────────────────────────────────────
  187 |   test('2.22 Section Attendance Ranking visible with data', async ({ page }) => {
  188 |     await expect(page.locator('.card-header:has-text("Section Attendance Ranking")')).toBeVisible();
  189 |     const rank = page.locator('#sectionRank');
  190 |     await expect(rank).toBeVisible();
  191 |   });
  192 | 
  193 |   // ──────────────────────────────────────────────────────────
  194 |   // DATA REFRESH (Auto-polling every 3s)
  195 |   // ──────────────────────────────────────────────────────────
  196 |   test('2.23 Dashboard data refreshes automatically', async ({ page }) => {
  197 |     await page.waitForTimeout(4000);
  198 |     // After 3s polling interval, data should have refreshed
  199 |     await expect(page.locator('#stat-cards')).toBeVisible();
  200 |   });
  201 | 
  202 |   // ──────────────────────────────────────────────────────────
  203 |   // SIDEBAR & TOPBAR
  204 |   // ──────────────────────────────────────────────────────────
  205 |   test('2.24 Sidebar shows admin navigation', async ({ page }) => {
  206 |     await expect(page.locator('.sidebar-header h3')).toHaveText('🏫 Gate Attendance');
  207 |     await expect(page.locator('.sidebar-header small')).toHaveText('Admin');
  208 |   });
  209 | 
  210 |   test('2.25 Topbar shows page title and user info', async ({ page }) => {
  211 |     await expect(page.locator('#page-title')).toHaveText('Dashboard');
  212 |     await expect(page.locator('.user-info')).toContainText('SystemAdmin');
  213 |   });
  214 | 
  215 |   test('2.26 Topbar logout button works', async ({ page }) => {
  216 |     await page.locator('.topbar-right button:has-text("Logout")').click();
  217 |     await page.waitForURL(/\/login/, { timeout: 10000 });
  218 |   });
  219 | 
  220 |   // ──────────────────────────────────────────────────────────
  221 |   // RESPONSIVE ELEMENTS
  222 |   // ──────────────────────────────────────────────────────────
  223 |   test('2.27 Mobile sidebar toggle button exists', async ({ page }) => {
> 224 |     await expect(page.locator('button:has-text("☰")')).toBeVisible();
      |                                                        ^ Error: expect(locator).toBeVisible() failed
  225 |   });
  226 | 
  227 |   // ──────────────────────────────────────────────────────────
  228 |   // SECTION RANK CLICK (if clickable)
  229 |   // ──────────────────────────────────────────────────────────
  230 |   test('2.28 Section rank items are present', async ({ page }) => {
  231 |     await page.waitForTimeout(2000);
  232 |     const ranks = page.locator('.section-rank');
  233 |     const count = await ranks.count();
  234 |     if (count > 0) {
  235 |       await ranks.first().click();
  236 |       await page.waitForTimeout(500);
  237 |     }
  238 |   });
  239 | 
  240 |   // ──────────────────────────────────────────────────────────
  241 |   // EXIT CHART ITEMS (if clickable)
  242 |   // ──────────────────────────────────────────────────────────
  243 |   test('2.29 Exit chart items are clickable', async ({ page }) => {
  244 |     await page.waitForTimeout(2000);
  245 |     const items = page.locator('.exit-chart-item');
  246 |     const count = await items.count();
  247 |     if (count > 0) {
  248 |       await items.first().click();
  249 |       await page.waitForTimeout(500);
  250 |     }
  251 |   });
  252 | });
  253 | 
```