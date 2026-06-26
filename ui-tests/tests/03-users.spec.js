const { test, expect } = require('@playwright/test');

const ADMIN = { username: 'admin', password: 'Admin@2026' };

test.describe('PAGE 3: USERS', () => {

  test.beforeAll(async ({ request }) => {
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
    await page.fill('#username', ADMIN.username);
    await page.fill('#password', ADMIN.password);
    await page.click('button[type="submit"]');
    await page.waitForSelector('.sidebar', { timeout: 10000 });
    await page.goto('/users');
    await page.waitForSelector('#users-table', { timeout: 10000 });
  });

  // ──────────────────────────────────────────────────────────
  // PAGE ELEMENTS
  // ──────────────────────────────────────────────────────────
  test('3.1 All page elements present', async ({ page }) => {
    // Search bar
    await expect(page.locator('#searchUser')).toBeVisible();
    await expect(page.locator('#searchUser')).toHaveAttribute('placeholder', 'Search name, username, email...');

    // Filter dropdown
    await expect(page.locator('#filterRole')).toBeVisible();
    const filterOptions = await page.locator('#filterRole option').allTextContents();
    expect(filterOptions).toEqual(['All Roles', 'Admin', 'Teacher', 'Adviser', 'Staff', 'Viewer']);

    // Add User button
    await expect(page.locator('button:has-text("Add User")')).toBeVisible();

    // Table headers
    await page.waitForSelector('table thead th', { timeout: 10000 });
    const headers = await page.locator('table thead th').allTextContents();
    expect(headers).toEqual(['Name', 'Employee ID', 'Username', 'Email', 'Contact', 'Specialization', 'Role', 'Status', 'Actions']);
  });

  test('3.2 Table loads with user data', async ({ page }) => {
    await page.waitForSelector('table', { timeout: 15000 });
    // Wait for data to load (may show loading first)
    await page.waitForTimeout(3000);
    const rows = await page.locator('table tbody tr').count();
    expect(rows).toBeGreaterThanOrEqual(1);
    // Check that table has content (role badges or user data)
    await expect(page.locator('table tbody')).not.toContainText('No users found');
  });

  // ──────────────────────────────────────────────────────────
  // SEARCH
  // ──────────────────────────────────────────────────────────
  test('3.3 Search by name filters table', async ({ page }) => {
    await page.waitForSelector('table tbody tr', { timeout: 10000 });
    await page.fill('#searchUser', 'SystemAdmin');
    await page.waitForTimeout(1000);
    const rows = await page.locator('table tbody tr').count();
    expect(rows).toBe(1);
  });

  test('3.4 Search by username filters table', async ({ page }) => {
    await page.waitForSelector('table tbody tr', { timeout: 10000 });
    await page.fill('#searchUser', 'admin');
    await page.waitForTimeout(1000);
    const rows = await page.locator('table tbody tr').count();
    expect(rows).toBeGreaterThanOrEqual(1);
  });

  test('3.5 Search by email filters table', async ({ page }) => {
    await page.waitForSelector('table tbody tr', { timeout: 10000 });
    await page.fill('#searchUser', 'admin@school.edu');
    await page.waitForTimeout(1000);
    const rows = await page.locator('table tbody tr').count();
    expect(rows).toBe(1);
  });

  test('3.6 Search non-existent shows "No users found"', async ({ page }) => {
    await page.waitForSelector('table tbody tr', { timeout: 10000 });
    await page.fill('#searchUser', 'xyznonexistent_12345');
    await page.waitForTimeout(1000);
    await expect(page.locator('table tbody')).toContainText('No users found');
  });

  // ──────────────────────────────────────────────────────────
  // FILTER BY ROLE
  // ──────────────────────────────────────────────────────────
  test('3.7 Filter by Admin role shows only admins', async ({ page }) => {
    await page.waitForSelector('table tbody tr', { timeout: 10000 });
    await page.selectOption('#filterRole', 'Admin');
    await page.waitForTimeout(1000);
    const rows = await page.locator('table tbody tr').count();
    expect(rows).toBe(1);
    await expect(page.locator('table tbody tr').first()).toContainText('Admin');
  });

  test('3.8 Filter by role then clear filter shows all', async ({ page }) => {
    await page.waitForSelector('table tbody tr', { timeout: 10000 });
    const initialRows = await page.locator('table tbody tr').count();
    await page.selectOption('#filterRole', 'Admin');
    await page.waitForTimeout(1000);
    await page.selectOption('#filterRole', '');
    await page.waitForTimeout(1000);
    const afterRows = await page.locator('table tbody tr').count();
    expect(afterRows).toBe(initialRows);
  });

  // ──────────────────────────────────────────────────────────
  // ADD USER MODAL
  // ──────────────────────────────────────────────────────────
  test('3.9 Add User modal opens with correct title', async ({ page }) => {
    await page.click('button:has-text("Add User")');
    await expect(page.locator('#userModal')).toBeVisible();
    await expect(page.locator('#modalTitle')).toHaveText('Add User');
    await expect(page.locator('#form-alert')).not.toBeVisible();
  });

  test('3.10 All fields present in add modal', async ({ page }) => {
    await page.click('button:has-text("Add User")');
    await expect(page.locator('#u_first_name')).toBeVisible();
    await expect(page.locator('#u_middle_name')).toBeVisible();
    await expect(page.locator('#u_last_name')).toBeVisible();
    await expect(page.locator('#u_employee_id')).toBeVisible();
    await expect(page.locator('#u_contact')).toBeVisible();
    await expect(page.locator('#u_email')).toBeVisible();
    await expect(page.locator('#u_username')).toBeVisible();
    await expect(page.locator('#u_role')).toBeVisible();
    await expect(page.locator('#u_password')).toBeVisible();
    await expect(page.locator('#u_status')).toBeVisible();
    await expect(page.locator('#u_specializationGroup')).not.toBeVisible();
  });

  test('3.11 Specialization shows for Teacher role', async ({ page }) => {
    await page.click('button:has-text("Add User")');
    await page.selectOption('#u_role', 'Teacher');
    await expect(page.locator('#u_specializationGroup')).toBeVisible();
    const specs = await page.locator('#u_specialization option').allTextContents();
    expect(specs.length).toBeGreaterThan(10);
    await page.selectOption('#u_role', 'Viewer');
    await expect(page.locator('#u_specializationGroup')).not.toBeVisible();
  });

  // ──────────────────────────────────────────────────────────
  // FORM VALIDATION
  // ──────────────────────────────────────────────────────────
  test('3.12 Blank submit shows validation errors', async ({ page }) => {
    await page.click('button:has-text("Add User")');
    await page.waitForSelector('#userForm', { state: 'visible' });
    await page.click('button[type="submit"]');
    await expect(page.locator('#form-alert')).toBeVisible();
    await expect(page.locator('#form-alert')).toContainText('First name is required');
  });

  test('3.13 Missing last name shows error', async ({ page }) => {
    await page.click('button:has-text("Add User")');
    await page.fill('#u_first_name', 'Test');
    await page.click('button[type="submit"]');
    await expect(page.locator('#form-alert')).toContainText('Last name is required');
  });

  test('3.14 Missing username shows error', async ({ page }) => {
    await page.click('button:has-text("Add User")');
    await page.fill('#u_first_name', 'Test');
    await page.fill('#u_last_name', 'User');
    await page.click('button[type="submit"]');
    await expect(page.locator('#form-alert')).toContainText('Username is required');
  });

  test('3.15 Invalid email shows error', async ({ page }) => {
    await page.click('button:has-text("Add User")');
    await page.fill('#u_first_name', 'Test');
    await page.fill('#u_last_name', 'User');
    await page.fill('#u_username', 'testuser_' + Date.now());
    await page.fill('#u_email', 'notanemail');
    await page.click('button[type="submit"]');
    await expect(page.locator('#form-alert')).toContainText('valid email');
  });

  test('3.16 Invalid contact number shows error', async ({ page }) => {
    await page.click('button:has-text("Add User")');
    await page.fill('#u_first_name', 'Test');
    await page.fill('#u_last_name', 'User');
    await page.fill('#u_username', 'testuser_' + Date.now());
    await page.fill('#u_email', 'test@example.com');
    await page.fill('#u_contact', '123');
    await page.click('button[type="submit"]');
    await expect(page.locator('#form-alert')).toContainText('valid Philippine contact number');
  });

  test('3.17 Modal close button works', async ({ page }) => {
    await page.click('button:has-text("Add User")');
    await expect(page.locator('#userModal')).toBeVisible();
    await page.click('button:has-text("×")');
    await expect(page.locator('#userModal')).not.toBeVisible();
  });

  test('3.18 Modal Cancel button works', async ({ page }) => {
    await page.click('button:has-text("Add User")');
    await expect(page.locator('#userModal')).toBeVisible();
    await page.locator('#userModal button:has-text("Cancel")').click();
    await expect(page.locator('#userModal')).not.toBeVisible();
  });

  // ──────────────────────────────────────────────────────────
  // CREATE USER (full workflow)
  // ──────────────────────────────────────────────────────────
  test('3.19 Create user successfully as Admin', async ({ page }) => {
    const ts = Date.now();
    await page.click('button:has-text("Add User")');
    await page.fill('#u_first_name', 'Create');
    await page.fill('#u_last_name', 'Test');
    await page.fill('#u_employee_id', 'EMP-' + ts);
    await page.fill('#u_email', `create${ts}@example.com`);
    await page.fill('#u_username', `create${ts}`);
    await page.fill('#u_password', 'test123');
    await page.selectOption('#u_role', 'Viewer');
    await page.click('button[type="submit"]');
    await expect(page.locator('#form-alert')).toContainText('User created');
    // Modal should close after ~1.5s
    await page.waitForTimeout(2000);
    await expect(page.locator('#userModal')).not.toBeVisible();
    // Table should refresh with new user
    await expect(page.locator('table tbody')).toContainText(`create${ts}`, { timeout: 10000 });
  });

  test('3.20 Create user with Teacher role and specialization', async ({ page }) => {
    const ts = Date.now();
    await page.click('button:has-text("Add User")');
    await page.fill('#u_first_name', 'Teacher');
    await page.fill('#u_last_name', 'Spec');
    await page.fill('#u_email', `teacher${ts}@example.com`);
    await page.fill('#u_username', `teacher${ts}`);
    await page.fill('#u_password', 'test123');
    await page.selectOption('#u_role', 'Teacher');
    await page.selectOption('#u_specialization', 'Mathematics');
    await page.click('button[type="submit"]');
    await expect(page.locator('#form-alert')).toContainText('User created');
    await page.waitForTimeout(2000);
    // Verify specialization appears in table
    await expect(page.locator('table tbody')).toContainText('Mathematics', { timeout: 10000 });
  });

  test('3.21 Duplicate username shows error', async ({ page }) => {
    await page.click('button:has-text("Add User")');
    await page.fill('#u_first_name', 'Dup');
    await page.fill('#u_last_name', 'Test');
    await page.fill('#u_email', `dup${Date.now()}@example.com`);
    await page.fill('#u_username', 'admin'); // Existing username
    await page.fill('#u_password', 'test123');
    await page.selectOption('#u_role', 'Viewer');
    await page.click('button[type="submit"]');
    await expect(page.locator('#form-alert')).toContainText('already exists');
  });

  // ──────────────────────────────────────────────────────────
  // EDIT USER
  // ──────────────────────────────────────────────────────────
  test('3.22 Edit button opens modal with pre-filled data', async ({ page }) => {
    await page.waitForSelector('table tbody tr', { timeout: 10000 });
    const editBtn = page.locator('button:has-text("Edit")').first();
    await editBtn.click();
    await expect(page.locator('#modalTitle')).toHaveText('Edit User');
    const firstName = await page.locator('#u_first_name').inputValue();
    expect(firstName.length).toBeGreaterThan(0);
    const lastName = await page.locator('#u_last_name').inputValue();
    expect(lastName.length).toBeGreaterThan(0);
  });

  test('3.23 Edit user first name and save', async ({ page }) => {
    const ts = Date.now();
    // First create a user to edit
    await page.click('button:has-text("Add User")');
    await page.fill('#u_first_name', 'EditMe');
    await page.fill('#u_last_name', 'Test');
    await page.fill('#u_email', `edit${ts}@example.com`);
    await page.fill('#u_username', `edit${ts}`);
    await page.fill('#u_password', 'test123');
    await page.selectOption('#u_role', 'Viewer');
    await page.click('button[type="submit"]');
    await expect(page.locator('#form-alert')).toContainText('User created');
    await page.waitForTimeout(2000);

    // Now edit that user
    await page.fill('#searchUser', `edit${ts}`);
    await page.waitForTimeout(1000);
    const editBtn = page.locator('button:has-text("Edit")').first();
    await editBtn.click();
    await expect(page.locator('#modalTitle')).toHaveText('Edit User');
    await page.fill('#u_first_name', 'Edited');
    await page.fill('#u_last_name', 'Success');
    await page.click('button[type="submit"]');
    await expect(page.locator('#form-alert')).toContainText('User updated');
  });

  // ──────────────────────────────────────────────────────────
  // TOGGLE STATUS (Activate/Deactivate)
  // ──────────────────────────────────────────────────────────
  test('3.24 Deactivate user shows confirmation dialog', async ({ page, request }) => {
    const loginRes = await request.post('http://localhost:8000/api/auth/login', {
      data: { username: ADMIN.username, password: ADMIN.password }
    });
    const loginData = await loginRes.json();
    const token = loginData.data.token;
    const ts = Date.now();
    const uname = `deact${ts}`;

    const createRes = await request.post('http://localhost:8000/api/users', {
      headers: { 'Authorization': `Bearer ${token}`, 'Content-Type': 'application/json' },
      data: { employee_id: `EMP-${ts}`, first_name: 'Deact', last_name: 'Test', email: `deact${ts}@example.com`, contact_number: '09170000099', username: uname, password: 'test123', role: 'Viewer' }
    });
    expect(createRes.ok()).toBeTruthy();

    await page.goto('/users');
    await page.waitForSelector('table', { timeout: 15000 });
    await page.waitForFunction(() => !document.querySelector('.loading'), { timeout: 10000 });
    await page.waitForTimeout(1000);

    const row = page.locator(`table tbody tr:has-text("deact${ts}@example.com")`);
    await expect(row).toBeVisible({ timeout: 10000 });
    const deactBtn = row.locator('button:has-text("Deactivate")');
    await expect(deactBtn).toBeVisible({ timeout: 5000 });
    await deactBtn.click();
    await expect(page.locator('.confirm-dialog')).toBeVisible({ timeout: 5000 });
    await expect(page.locator('.confirm-dialog__message')).toContainText('Inactive');
    await page.locator('.confirm-ok').click();
    // After clicking OK, dialog should close
    await page.waitForTimeout(1000);
    await expect(page.locator('.confirm-dialog')).not.toBeVisible();
  });

  test('3.25 Activate user shows confirmation dialog', async ({ page, request }) => {
    const loginRes = await request.post('http://localhost:8000/api/auth/login', {
      data: { username: ADMIN.username, password: ADMIN.password }
    });
    const loginData = await loginRes.json();
    const token = loginData.data.token;
    const ts = Date.now();
    const uname = `act${ts}`;

    const createRes = await request.post('http://localhost:8000/api/users', {
      headers: { 'Authorization': `Bearer ${token}`, 'Content-Type': 'application/json' },
      data: { employee_id: `EMP-${ts}`, first_name: 'Act', last_name: 'Test', email: `act${ts}@example.com`, contact_number: '09170000099', username: uname, password: 'test123', role: 'Viewer', status: 'Inactive' }
    });
    expect(createRes.ok()).toBeTruthy();

    await page.goto('/users');
    await page.waitForSelector('table', { timeout: 15000 });
    await page.waitForFunction(() => !document.querySelector('.loading'), { timeout: 10000 });
    await page.waitForTimeout(1000);

    const row = page.locator(`table tbody tr:has-text("act${ts}@example.com")`);
    await expect(row).toBeVisible({ timeout: 10000 });
    const activateBtn = row.locator('button:has-text("Activate")');
    await expect(activateBtn).toBeVisible({ timeout: 5000 });
    await activateBtn.click();
    await expect(page.locator('.confirm-dialog')).toBeVisible({ timeout: 5000 });
    await expect(page.locator('.confirm-dialog__message')).toContainText('Active');
    await page.locator('.confirm-ok').click();
    await page.waitForTimeout(1000);
    await expect(page.locator('.confirm-dialog')).not.toBeVisible();
  });

  // ──────────────────────────────────────────────────────────
  // DELETE USER
  // ──────────────────────────────────────────────────────────
  test('3.26 Delete user shows confirmation', async ({ page }) => {
    await page.waitForSelector('table tbody tr', { timeout: 10000 });
    // Get the first user that can be deleted (not admin, not self)
    const rows = await page.locator('table tbody tr').count();
    if (rows > 1) {
      const deleteBtn = page.locator('button:has-text("Delete")').first();
      await deleteBtn.click();
      await expect(page.locator('.confirm-dialog')).toBeVisible();
      await expect(page.locator('.confirm-dialog__message')).toContainText('Delete');
      await page.locator('.confirm-ok').click();
      await page.waitForTimeout(1000);
    }
  });

  // ──────────────────────────────────────────────────────────
  // EMPLOYEE ID
  // ──────────────────────────────────────────────────────────
  test('3.27 Employee ID appears in table after creation', async ({ page }) => {
    const ts = Date.now();
    await page.click('button:has-text("Add User")');
    await page.fill('#u_first_name', 'EmpId');
    await page.fill('#u_last_name', 'Test');
    await page.fill('#u_employee_id', 'EMP-' + ts);
    await page.fill('#u_email', `empid${ts}@example.com`);
    await page.fill('#u_username', `empid${ts}`);
    await page.fill('#u_password', 'test123');
    await page.selectOption('#u_role', 'Viewer');
    await page.click('button[type="submit"]');
    await page.waitForTimeout(2000);
    await page.fill('#searchUser', `empid${ts}`);
    await page.waitForTimeout(1000);
    await expect(page.locator('table tbody')).toContainText('EMP-' + ts, { timeout: 10000 });
  });

  // ──────────────────────────────────────────────────────────
  // ROLE CHANGE IN MODAL
  // ──────────────────────────────────────────────────────────
  test('3.28 Changing role in edit modal shows specialization for Teacher', async ({ page }) => {
    await page.waitForSelector('table tbody tr', { timeout: 10000 });
    await page.locator('button:has-text("Edit")').first().click();
    await page.selectOption('#u_role', 'Teacher');
    await expect(page.locator('#u_specializationGroup')).toBeVisible();
    await page.selectOption('#u_role', 'Viewer');
    await expect(page.locator('#u_specializationGroup')).not.toBeVisible();
  });

  // ──────────────────────────────────────────────────────────
  // PROPER CASE AUTO-FORMAT
  // ──────────────────────────────────────────────────────────
  test('3.29 Names are auto-formatted to Proper Case', async ({ page }) => {
    await page.click('button:has-text("Add User")');
    await page.fill('#u_first_name', 'john');
    await page.fill('#u_last_name', 'doe');
    // Trigger the onblur proper case formatting
    await page.locator('#u_email').focus();
    const firstName = await page.locator('#u_first_name').inputValue();
    const lastName = await page.locator('#u_last_name').inputValue();
    expect(firstName).toBe('John');
    expect(lastName).toBe('Doe');
  });
});
