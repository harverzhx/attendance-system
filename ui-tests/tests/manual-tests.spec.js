const { test, expect } = require('@playwright/test');

const ADMIN = { username: 'admin', password: 'Admin@2026' };
const TEACHER = { username: 'alice', password: 'password123' };

test.describe('SECTION 1: LOGIN', () => {

  test('1.1 Login form is visible', async ({ page }) => {
    await page.goto('/login');
    await expect(page.locator('#loginForm')).toBeVisible();
    await expect(page.locator('#username')).toBeVisible();
    await expect(page.locator('#password')).toBeVisible();
    await expect(page.locator('button[type="submit"]')).toHaveText('Sign In');
  });

  test('1.2 Blank submit shows error', async ({ page }) => {
    await page.goto('/login');
    await page.click('button[type="submit"]');
    await expect(page.locator('.alert-danger')).toContainText('Username and password required');
  });

  test('1.3 Wrong credentials', async ({ page }) => {
    await page.goto('/login');
    await page.fill('#username', 'wronguser');
    await page.fill('#password', 'wrongpass');
    await page.click('button[type="submit"]');
    await expect(page.locator('.alert-danger')).toContainText('Invalid credentials');
  });

  test('1.4 Admin login redirects to dashboard', async ({ page }) => {
    await page.goto('/login');
    await page.fill('#username', ADMIN.username);
    await page.fill('#password', ADMIN.password);
    await page.click('button[type="submit"]');
    await expect(page).toHaveURL(/\/dashboard/);
  });

  test('1.5 Teacher login success', async ({ page }) => {
    await page.goto('/login');
    await page.fill('#username', TEACHER.username);
    await page.fill('#password', TEACHER.password);
    await page.click('button[type="submit"]');
    await expect(page).toHaveURL(/\/dashboard/);
  });

  test('1.10 Show/Hide password toggle', async ({ page }) => {
    await page.goto('/login');
    const pwd = page.locator('#password');
    await page.fill('#password', 'secret123');
    await page.click('#togglePass');
    await expect(pwd).toHaveAttribute('type', 'text');
    await page.click('#togglePass');
    await expect(pwd).toHaveAttribute('type', 'password');
  });

  test('1.11 Logout', async ({ page }) => {
    await page.goto('/login');
    await page.fill('#username', ADMIN.username);
    await page.fill('#password', ADMIN.password);
    await page.click('button[type="submit"]');
    await page.waitForURL(/\/dashboard/);
    await page.click('text=Logout');
    await expect(page).toHaveURL(/\/login/);
  });
});

test.describe('SECTION 2: ADMIN DASHBOARD', () => {

  test.beforeEach(async ({ page }) => {
    await page.goto('/login');
    await page.fill('#username', ADMIN.username);
    await page.fill('#password', ADMIN.password);
    await page.click('button[type="submit"]');
    await page.waitForURL(/\/dashboard/);
  });

  test('2.1 Stat cards visible (Students, Teachers, Staff, Parents)', async ({ page }) => {
    await expect(page.locator('#stat-cards')).toBeVisible();
    await expect(page.locator('.stat-label:has-text("Total Students")')).toBeVisible();
    await expect(page.locator('.stat-label:has-text("Teachers")')).toBeVisible();
    await expect(page.locator('.stat-label:has-text("Staff")')).toBeVisible();
    await expect(page.locator('.stat-label:has-text("Parents")')).toBeVisible();
  });

  test('2.2 Present/Late/Absent counts visible', async ({ page }) => {
    await expect(page.locator('.stat-label:has-text("Present Today")')).toBeVisible();
    await expect(page.locator('.stat-label:has-text("Late Today")')).toBeVisible();
    await expect(page.locator('.stat-label:has-text("Absent Today")')).toBeVisible();
  });

  test('2.3 Inside/Outside Campus visible', async ({ page }) => {
    await expect(page.locator('.stat-label:has-text("Inside Campus")')).toBeVisible();
    await expect(page.locator('.stat-label:has-text("Outside Campus")')).toBeVisible();
  });

  test('2.4 Active Pull-Outs section visible', async ({ page }) => {
    await expect(page.locator('.card-header:has-text("Active Pull-Outs")')).toBeVisible();
  });

  test('2.5 Pending Excuses section visible', async ({ page }) => {
    await expect(page.locator('.card-header:has-text("Pending Excuses")')).toBeVisible();
  });

  test('2.6 Sidebar menu visible with all links', async ({ page }) => {
    await expect(page.locator('.sidebar')).toBeVisible();
    await expect(page.locator('.sidebar-menu a:has-text("Dashboard")')).toBeVisible();
    await expect(page.locator('.sidebar-menu a:has-text("Users")')).toBeVisible();
    await expect(page.locator('.sidebar-menu a:has-text("Students")')).toBeVisible();
  });

  test('2.7 Topbar shows username', async ({ page }) => {
    await expect(page.locator('.topbar')).toBeVisible();
    await expect(page.locator('.user-info')).toContainText('Admin');
  });
});

test.describe('SECTION 3: USERS', () => {

  test.beforeEach(async ({ page }) => {
    await page.goto('/login');
    await page.fill('#username', ADMIN.username);
    await page.fill('#password', ADMIN.password);
    await page.click('button[type="submit"]');
    await page.waitForURL(/\/dashboard/);
    await page.goto('/users');
  });

  test('3.1 Users table visible with all columns', async ({ page }) => {
    await expect(page.locator('#users-table')).toBeVisible();
    await expect(page.locator('th:has-text("Employee ID")')).toBeVisible();
    await expect(page.getByRole('columnheader', { name: 'Name', exact: true })).toBeVisible();
    await expect(page.locator('th:has-text("Role")')).toBeVisible();
    await expect(page.locator('th:has-text("Email")')).toBeVisible();
    await expect(page.locator('th:has-text("Status")')).toBeVisible();
  });

  test('3.2 Add User modal opens', async ({ page }) => {
    await page.click('button:has-text("Add User")');
    await expect(page.locator('#userModal')).toBeVisible();
    await expect(page.locator('#modalTitle')).toHaveText('Add User');
  });

  test('3.3 Blank submit in modal shows error', async ({ page }) => {
    await page.click('button:has-text("Add User")');
    await expect(page.locator('#userModal')).toBeVisible();
    await page.click('button[type="submit"]');
    // Should show custom form alert (not browser validation)
    await expect(page.locator('#form-alert')).toBeVisible();
    await expect(page.locator('#form-alert')).toContainText('First name is required');
  });

  test('3.7 Invalid email shows error', async ({ page }) => {
    await page.click('button:has-text("Add User")');
    await page.fill('#u_first_name', 'Test');
    await page.fill('#u_last_name', 'User');
    await page.fill('#u_username', 'testui_' + Date.now());
    await page.fill('#u_email', 'notanemail');
    await page.click('button[type="submit"]');
    await expect(page.locator('#form-alert')).toContainText('valid email');
  });

  test('3.9 Create user successfully', async ({ page }) => {
    const ts = Date.now();
    await page.click('button:has-text("Add User")');
    await page.fill('#u_first_name', 'UI');
    await page.fill('#u_last_name', 'Test');
    await page.fill('#u_employee_id', 'EMP-' + ts);
    await page.fill('#u_email', `uitest${ts}@example.com`);
    await page.fill('#u_username', `uitest${ts}`);
    await page.fill('#u_password', 'test123');
    await page.selectOption('#u_role', 'Viewer');
    await page.click('button[type="submit"]');
    await expect(page.locator('#form-alert')).toContainText('User created');
  });

  test('3.12 Edit user modal prefilled', async ({ page }) => {
    await page.waitForSelector('table tbody tr', { timeout: 10000 });
    await page.click('button:has-text("Edit"):first-of-type');
    await expect(page.locator('#u_first_name')).not.toBeEmpty();
  });
});

test.describe('SECTION 4: REGISTRATIONS', () => {

  test('4.1 Register form visible', async ({ page }) => {
    await page.goto('/register');
    await expect(page.locator('form')).toBeVisible();
  });

  test('4.7 Complete registration', async ({ page }) => {
    const ts = Date.now();
    await page.goto('/register');
    await page.fill('#first_name', 'Register');
    await page.fill('#last_name', 'Test');
    await page.fill('#email', `reg${ts}@example.com`);
    await page.fill('#contact_number', '09171234567');
    await page.fill('#username', `reg${ts}`);
    await page.fill('#password', 'password123');
    await page.fill('#confirm_password', 'password123');
    await page.click('button[type="submit"]');
    await expect(page).toHaveURL(/\/login/);
  });
});
