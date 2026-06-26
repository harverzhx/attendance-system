const { test, expect } = require('@playwright/test');

const ADMIN = { username: 'admin', password: 'Admin@2026' };

test.describe('PAGE 4: REGISTRATIONS', () => {

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
    await page.goto('/registrations');
    await page.waitForSelector('#registrations-table', { timeout: 10000 });
  });

  test('4.1 All page elements present', async ({ page }) => {
    await expect(page.locator('#statusFilter')).toBeVisible();
    const options = await page.locator('#statusFilter option').allTextContents();
    expect(options).toEqual(['All', 'Pending', 'Approved', 'Rejected']);
    await expect(page.locator('#searchReg')).toBeVisible();
    await expect(page.locator('#pendingBadge')).toBeVisible();
  });

  test('4.2 Filter by Pending status shows pending registrations', async ({ page }) => {
    await page.selectOption('#statusFilter', 'Pending');
    await page.waitForTimeout(1000);
    const rows = await page.locator('table tbody tr').count();
    if (rows > 0) {
      const statuses = await page.locator('table tbody tr td:nth-child(6)').allTextContents();
      for (const s of statuses) {
        expect(s.toLowerCase()).toContain('pending');
      }
    }
  });

  test('4.3 Filter by Approved shows approved registrations', async ({ page }) => {
    await page.selectOption('#statusFilter', 'Approved');
    await page.waitForTimeout(1000);
    const rows = await page.locator('table tbody tr').count();
    if (rows > 0) {
      const statuses = await page.locator('table tbody tr td:nth-child(6)').allTextContents();
      for (const s of statuses) {
        expect(s.toLowerCase()).toContain('approved');
      }
    }
  });

  test('4.4 Search by name filters registrations', async ({ page }) => {
    await page.fill('#searchReg', 'Register');
    await page.waitForTimeout(1000);
    const rows = await page.locator('table tbody tr').count();
    if (rows > 0) {
      await expect(page.locator('table tbody')).toContainText('Register');
    }
  });

  test('4.5 Search non-existent shows no records', async ({ page }) => {
    await page.fill('#searchReg', 'xyznonexistent');
    await page.waitForTimeout(1000);
    await expect(page.locator('table tbody')).toContainText('No registrations found');
  });

  test('4.6 Approve button opens confirmation dialog (if pending exists)', async ({ page }) => {
    await page.selectOption('#statusFilter', 'Pending');
    await page.waitForTimeout(2000);
    const approveBtn = page.locator('button:has-text("Approve")').first();
    const count = await approveBtn.count();
    if (count > 0) {
      await approveBtn.click();
      await expect(page.locator('.confirm-dialog')).toBeVisible({ timeout: 5000 });
      await expect(page.locator('.confirm-dialog__message')).toContainText('Approve');
      await page.locator('.confirm-ok').click();
      await page.waitForTimeout(1000);
      await expect(page.locator('.confirm-dialog')).not.toBeVisible();
    }
  });

  test('4.7 Reject button opens confirmation dialog (if pending exists)', async ({ page }) => {
    await page.selectOption('#statusFilter', 'Pending');
    await page.waitForTimeout(2000);
    const rejectBtn = page.locator('button:has-text("Reject")').first();
    const count = await rejectBtn.count();
    if (count > 0) {
      await rejectBtn.click();
      await expect(page.locator('.confirm-dialog')).toBeVisible({ timeout: 5000 });
      await expect(page.locator('.confirm-dialog__message')).toContainText('Reject');
      await page.locator('.confirm-ok').click();
      await page.waitForTimeout(1000);
    }
  });

  test('4.8 Table headers correct', async ({ page }) => {
    await page.waitForSelector('table thead th', { timeout: 10000 });
    const headers = await page.locator('table thead th').allTextContents();
    expect(headers).toEqual(['Name', 'Email', 'Contact', 'Role', 'Submitted', 'Status', 'Actions']);
  });

  test('4.9 Pending badge shows count', async ({ page }) => {
    const badge = page.locator('#pendingBadge');
    await expect(badge).toBeVisible();
    const text = await badge.textContent();
    expect(text.length).toBeGreaterThan(0);
  });

  test('4.10 Reset filter to All shows all', async ({ page }) => {
    await page.selectOption('#statusFilter', 'Pending');
    await page.waitForTimeout(1000);
    await page.selectOption('#statusFilter', '');
    await page.waitForTimeout(1000);
    await expect(page.locator('table thead')).toBeVisible();
  });
});
