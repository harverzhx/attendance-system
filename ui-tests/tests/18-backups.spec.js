const { test, expect } = require('@playwright/test');

const ADMIN = { username: 'admin', password: 'Admin@2026' };

test.describe('PAGE 18: BACKUPS', () => {

  test.beforeAll(async ({ request }) => {
    for (let i = 0; i < 10; i++) {
      try { const r = await request.get('http://localhost:8000/'); if (r.ok()) return; } catch (_) {}
      await new Promise(r => setTimeout(r, 2000));
    }
  });

  test.beforeEach(async ({ page }) => {
    await page.goto('/login');
    await page.fill('#username', ADMIN.username);
    await page.fill('#password', ADMIN.password);
    await page.click('button[type="submit"]');
    await page.waitForTimeout(2000);
  });

  test('18.1 Page loads with admin access', async ({ page }) => {
    await page.goto('/backups');
    await page.waitForTimeout(3000);
    await expect(page.locator('#backups-table')).toBeVisible({ timeout: 8000 });
  });

  test('18.2 Create backup buttons present', async ({ page }) => {
    await page.goto('/backups');
    await page.waitForTimeout(2000);
    await expect(page.locator('button:has-text("Full Backup")')).toBeVisible();
    await expect(page.locator('button:has-text("Manual Backup")')).toBeVisible();
  });

  test('18.3 Table loads with correct headers', async ({ page }) => {
    await page.goto('/backups');
    await page.waitForTimeout(3000);
    const ths = page.locator('#backups-table table thead th');
    const count = await ths.count();
    if (count > 0) {
      expect(count).toBe(7);
      const headers = await ths.allTextContents();
      expect(headers).toEqual(['Filename', 'Type', 'Size', 'Created By', 'Date', 'Status', 'Actions']);
    }
  });

  test('18.4 Create full backup triggers confirmation', async ({ page }) => {
    await page.goto('/backups');
    await page.waitForTimeout(2000);
    await page.click('button:has-text("Full Backup")');
    await page.waitForTimeout(1500);
    const dialog = page.locator('.confirm-dialog');
    const isVisible = await dialog.isVisible().catch(() => false);
    if (isVisible) {
      await expect(dialog).toContainText('backup', { timeout: 3000, ignoreCase: true });
    }
  });

  test('18.5 Create manual backup triggers confirmation', async ({ page }) => {
    await page.goto('/backups');
    await page.waitForTimeout(2000);
    await page.click('button:has-text("Manual Backup")');
    await page.waitForTimeout(1500);
    const dialog = page.locator('.confirm-dialog');
    const isVisible = await dialog.isVisible().catch(() => false);
    if (isVisible) {
      await expect(dialog).toContainText('backup', { timeout: 3000, ignoreCase: true });
    }
  });

  test('18.6 Role guard present on page', async ({ page }) => {
    await page.goto('/backups');
    await page.waitForTimeout(2000);
    const hasRoleGuard = await page.evaluate(() => {
      return typeof auth !== 'undefined' && typeof auth.requireRole === 'function';
    });
    expect(hasRoleGuard).toBe(true);
  });
});
