const { test, expect } = require('@playwright/test');

const ACCOUNTS = {
  Admin:   { username: 'admin',   password: 'Admin@2026', redirect: '/dashboard' },
  Teacher: { username: 'alice',   password: 'password123', redirect: '/dashboard' },
  Staff:   { username: 'stafftester_1781872919', password: 'password123', redirect: '/dashboard' },
  Viewer:  { username: 'viewertester', password: 'password123', redirect: '/dashboard' },
  Parent:  { username: 'parenttester', password: 'password123', redirect: '/parent' },
};

// ────────────────────────────────────────────────────────────
// LOGIN PAGE - comprehensive testing
// ────────────────────────────────────────────────────────────
test.describe('PAGE 1: LOGIN', () => {

  test.beforeAll(async ({ request }) => {
    // Health check: wait for server to be up
    for (let i = 0; i < 10; i++) {
      try {
        const r = await request.get('http://localhost:8000/');
        if (r.ok()) return;
      } catch (_) {}
      await new Promise(r => setTimeout(r, 2000));
    }
  });

  test.beforeEach(async ({ page }) => {
    await page.goto('/login');
    await page.waitForSelector('#loginForm');
  });

  // --- FORM ELEMENTS ---
  test('1.1 All login form elements are present', async ({ page }) => {
    await expect(page.locator('#username')).toBeVisible();
    await expect(page.locator('#password')).toBeVisible();
    await expect(page.locator('button[type="submit"]')).toHaveText('Sign In');
    await expect(page.locator('#togglePass')).toHaveText('Show');
    await expect(page.locator('a[href="/pages/register.html"]')).toHaveText('Register Account');
    await expect(page.locator('.logo h2')).toHaveText('School Gate Attendance');
  });

  // --- EMPTY INPUTS ---
  test('1.2 Both fields empty → error', async ({ page }) => {
    await page.click('button[type="submit"]');
    await expect(page.locator('.alert-danger')).toContainText('Username and password required');
  });

  test('1.3 Empty username only → error', async ({ page }) => {
    await page.fill('#password', 'anything');
    await page.click('button[type="submit"]');
    await expect(page.locator('.alert-danger')).toContainText('Username and password required');
  });

  test('1.4 Empty password only → error', async ({ page }) => {
    await page.fill('#username', 'admin');
    await page.click('button[type="submit"]');
    await expect(page.locator('.alert-danger')).toContainText('Username and password required');
  });

  test('1.5 Only spaces → should be treated as empty', async ({ page }) => {
    await page.fill('#username', '   ');
    await page.fill('#password', '   ');
    await page.click('button[type="submit"]');
    const alert = page.locator('.alert-danger');
    await expect(alert).toBeVisible();
  });

  // --- INVALID CREDENTIALS ---
  test('1.6 Wrong username → "Invalid credentials"', async ({ page }) => {
    await page.fill('#username', 'nonexistent_user_xyz');
    await page.fill('#password', 'somepassword');
    await page.click('button[type="submit"]');
    await expect(page.locator('.alert-danger')).toContainText('Invalid credentials');
  });

  test('1.7 Wrong password → "Invalid credentials"', async ({ page }) => {
    await page.fill('#username', 'admin');
    await page.fill('#password', 'WrongPass123!');
    await page.click('button[type="submit"]');
    await expect(page.locator('.alert-danger')).toContainText('Invalid credentials');
  });

  test('1.8 SQL injection attempt → should not crash', async ({ page }) => {
    await page.fill('#username', "' OR 1=1 --");
    await page.fill('#password', "' OR '1'='1");
    await page.click('button[type="submit"]');
    await expect(page.locator('.alert-danger')).toBeVisible();
  });

  test('1.9 Very long input → should handle gracefully', async ({ page }) => {
    await page.fill('#username', 'a'.repeat(1000));
    await page.fill('#password', 'b'.repeat(1000));
    await page.click('button[type="submit"]');
    await expect(page.locator('.alert-danger')).toBeVisible();
  });

  // --- CASE SENSITIVITY ---
  test('1.10 Case-insensitive username (UPPERCASE)', async ({ page }) => {
    await page.fill('#username', 'ADMIN');
    await page.fill('#password', 'Admin@2026');
    await page.click('button[type="submit"]');
    await page.waitForSelector('.sidebar', { timeout: 10000 });
    await expect(page).toHaveURL(/\/dashboard/);
  });

  test('1.11 Case-insensitive username (mixed case)', async ({ page }) => {
    await page.fill('#username', 'Admin');
    await page.fill('#password', 'Admin@2026');
    await page.click('button[type="submit"]');
    await page.waitForSelector('.sidebar', { timeout: 10000 });
    await expect(page).toHaveURL(/\/dashboard/);
  });

  // --- PASSWORD SHOW/HIDE ---
  test('1.12 Show/Hide password toggle works', async ({ page }) => {
    const pwd = page.locator('#password');
    const toggle = page.locator('#togglePass');
    // Ensure password field is empty first so browser doesn't autofill
    await page.fill('#password', '');
    await expect(pwd).toHaveAttribute('type', 'password');
    await expect(toggle).toHaveText('Show');
    await toggle.click();
    await expect(pwd).toHaveAttribute('type', 'text');
    await expect(toggle).toHaveText('Hide');
    await toggle.click();
    await expect(pwd).toHaveAttribute('type', 'password');
    await expect(toggle).toHaveText('Show');
  });

  // --- SUCCESSFUL LOGIN - ALL ROLES ---
  test('1.13 Admin login → redirect /dashboard, sidebar shows admin menu', async ({ page }) => {
    const acct = ACCOUNTS.Admin;
    await page.fill('#username', acct.username);
    await page.fill('#password', acct.password);
    await page.click('button[type="submit"]');
    await page.waitForSelector('.sidebar', { timeout: 10000 });
    await expect(page).toHaveURL(/\/dashboard/);
    await expect(page.locator('.sidebar-menu a:has-text("Users")')).toBeVisible();
    await expect(page.locator('.sidebar-menu a:has-text("Backups")')).toBeVisible();
  });

  test('1.14 Teacher login → redirect /dashboard, sidebar shows teacher menu', async ({ page }) => {
    const acct = ACCOUNTS.Teacher;
    await page.fill('#username', acct.username);
    await page.fill('#password', acct.password);
    await page.click('button[type="submit"]');
    await page.waitForSelector('.sidebar', { timeout: 10000 });
    await expect(page).toHaveURL(/\/dashboard/);
    await expect(page.locator('.sidebar-menu a:has-text("Mark Attendance")')).toBeVisible();
    await expect(page.locator('.sidebar-menu a:has-text("Users")')).toHaveCount(0);
  });

  test('1.15 Staff login → redirect /dashboard, sidebar shows staff menu', async ({ page }) => {
    const acct = ACCOUNTS.Staff;
    await page.fill('#username', acct.username);
    await page.fill('#password', acct.password);
    await page.click('button[type="submit"]');
    await page.waitForSelector('.sidebar', { timeout: 10000 });
    await expect(page).toHaveURL(/\/dashboard/);
    await expect(page.locator('.sidebar-menu a:has-text("Scanner")')).toBeVisible();
    await expect(page.locator('.sidebar-menu a:has-text("Users")')).toHaveCount(0);
  });

  test('1.16 Viewer login → redirect /dashboard, sidebar shows viewer menu', async ({ page }) => {
    const acct = ACCOUNTS.Viewer;
    await page.fill('#username', acct.username);
    await page.fill('#password', acct.password);
    await page.click('button[type="submit"]');
    await page.waitForSelector('.sidebar', { timeout: 10000 });
    await expect(page).toHaveURL(/\/dashboard/);
    // Check sidebar shows only Viewer-accessible links (Account/Logout also exists)
    await expect(page.locator('.sidebar-menu a[href*="dashboard"]')).toBeVisible();
    await expect(page.locator('.sidebar-menu a[href*="attendance-records"]')).toBeVisible();
    // Admin-only links should NOT exist
    await expect(page.locator('.sidebar-menu a[href*="users"]')).toHaveCount(0);
    await expect(page.locator('.sidebar-menu a[href*="settings"]')).toHaveCount(0);
    // Count page links only
    const linkCount = await page.locator('.sidebar-menu a').count();
    expect(linkCount).toBeGreaterThanOrEqual(2); // at least Dashboard + Attendance
  });

  test('1.17 Parent login → redirect /parent, sidebar shows parent menu', async ({ page }) => {
    const acct = ACCOUNTS.Parent;
    await page.fill('#username', acct.username);
    await page.fill('#password', acct.password);
    await page.click('button[type="submit"]');
    await page.waitForSelector('.sidebar', { timeout: 10000 });
    await expect(page).toHaveURL(/\/parent/);
    await expect(page.locator('.sidebar-menu a:has-text("Excuse Slip")')).toBeVisible();
  });

  // --- LOGOUT ---
  test('1.18 Logout → redirect to /login, cannot access dashboard after', async ({ page }) => {
    const acct = ACCOUNTS.Admin;
    await page.fill('#username', acct.username);
    await page.fill('#password', acct.password);
    await page.click('button[type="submit"]');
    await page.waitForSelector('.sidebar', { timeout: 10000 });
    await page.click('text=Logout');
    await expect(page).toHaveURL(/\/login/);
    await page.goto('/dashboard');
    await expect(page).toHaveURL(/\/login/);
  });

  // --- BUTTON STATE DURING LOADING ---
  test('1.19 Submit button disabled during login attempt', async ({ page }) => {
    await page.fill('#username', ACCOUNTS.Admin.username);
    await page.fill('#password', ACCOUNTS.Admin.password);
    // Use dispatch to check button state before navigation completes
    await page.evaluate(() => {
      const btn = document.querySelector('button[type="submit"]');
      btn.click();
    });
    const btn = page.locator('button[type="submit"]');
    await expect(btn).toBeDisabled({ timeout: 3000 });
    await expect(btn).toHaveText('Signing in...');
    await page.waitForSelector('.sidebar', { timeout: 10000 });
  });

  // --- REGISTER LINK NAVIGATION ---
  test('1.20 Register link navigates to /register', async ({ page }) => {
    await page.click('a[href="/pages/register.html"]');
    await expect(page).toHaveURL(/\/register/);
  });

  // --- DIRECT ACCESS WHEN LOGGED IN ---
  test('1.21 Already logged in user redirected from /login', async ({ page }) => {
    const acct = ACCOUNTS.Admin;
    await page.fill('#username', acct.username);
    await page.fill('#password', acct.password);
    await page.click('button[type="submit"]');
    await page.waitForSelector('.sidebar', { timeout: 10000 });
    await page.goto('/login');
    await expect(page).toHaveURL(/\/dashboard/);
  });

  // --- PENDING USER ---
  test('1.22 Pending registration user sees pending message', async ({ page }) => {
    await page.goto('/register');
    const ts = Date.now();
    await page.fill('#first_name', 'Pending');
    await page.fill('#last_name', 'Test');
    await page.fill('#email', `pending${ts}@example.com`);
    await page.fill('#contact_number', '09171234567');
    await page.fill('#username', `pendinguser${ts}`);
    await page.fill('#password', 'password123');
    await page.fill('#confirm_password', 'password123');
    await page.click('button[type="submit"]');
    // Wait for success message then redirect (2s timeout in code)
    await page.waitForURL(/\/login/, { timeout: 10000 });

    await page.fill('#username', `pendinguser${ts}`);
    await page.fill('#password', 'password123');
    await page.click('button[type="submit"]');
    await expect(page.locator('.alert-danger')).toContainText('pending approval');
  });

  // --- INACTIVE USER ---
  test('1.23 Inactive user sees inactive message', async ({ page, request }) => {
    // Login admin via API to get token
    const loginRes = await request.post('http://localhost:8000/api/auth/login', {
      data: { username: ACCOUNTS.Admin.username, password: ACCOUNTS.Admin.password }
    });
    const loginData = await loginRes.json();
    const token = loginData.data.token;

    const ts = Date.now();
    const email = `inactuser${ts}@test.com`;
    const uname = `inactuser${ts}`;

    // Create user via API
    const createRes = await request.post('http://localhost:8000/api/users', {
      headers: { 'Authorization': `Bearer ${token}`, 'Content-Type': 'application/json' },
      data: { employee_id: '', first_name: 'Inac', last_name: 'Tester', email, contact_number: '09170000099', username: uname, password: 'password123', role: 'Viewer' }
    });
    const createData = await createRes.json();
    const userId = createData.data.user_id;

    // Deactivate user via API
    await request.put(`http://localhost:8000/api/users/${userId}/deactivate`, {
      headers: { 'Authorization': `Bearer ${token}` }
    });

    // Try login as deactivated user via UI
    await page.goto('/login');
    await page.fill('#username', uname);
    await page.fill('#password', 'password123');
    await page.click('button[type="submit"]');
    await expect(page.locator('.alert-danger')).toContainText('inactive');
  });

  // --- TOPBAR USERNAME DISPLAY ---
  test('1.24 Topbar shows correct name after login', async ({ page }) => {
    await page.fill('#username', ACCOUNTS.Admin.username);
    await page.fill('#password', ACCOUNTS.Admin.password);
    await page.click('button[type="submit"]');
    await page.waitForSelector('.user-info', { timeout: 10000 });
    await expect(page.locator('.user-info')).toContainText('SystemAdmin');
  });
});
