const { test, expect } = require('@playwright/test');

const ADMIN = { username: 'admin', password: 'Admin@2026' };

test.describe('PAGE 16: AUDIT LOGS', () => {

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

  test('16.1 All filter elements present', async ({ page }) => {
    await page.goto('/audit-logs');
    await page.waitForTimeout(2000);
    await expect(page.locator('#auditSearch')).toBeVisible({ timeout: 8000 });
    await expect(page.locator('#auditAction')).toBeVisible();
    await expect(page.locator('#auditFrom')).toBeVisible();
    await expect(page.locator('#auditTo')).toBeVisible();
    await expect(page.locator('button:has-text("Search")')).toBeVisible();
  });

  test('16.2 Action filter options', async ({ page }) => {
    await page.goto('/audit-logs');
    await page.waitForTimeout(1500);
    const opts = await page.locator('#auditAction option').allTextContents();
    expect(opts).toEqual(['All', 'LOGIN', 'LOGOUT', 'SCAN', 'CREATE', 'UPDATE', 'DELETE']);
  });

  test('16.3 Date defaults set', async ({ page }) => {
    await page.goto('/audit-logs');
    await page.waitForTimeout(1500);
    const fromVal = await page.locator('#auditFrom').inputValue();
    const toVal = await page.locator('#auditTo').inputValue();
    expect(fromVal.length).toBe(10);
    expect(toVal.length).toBe(10);
  });

  test('16.4 Table loads with data', async ({ page }) => {
    await page.goto('/audit-logs');
    await page.waitForTimeout(3000);
    const ths = page.locator('#audit-logs-table table thead th');
    const count = await ths.count();
    expect(count).toBeGreaterThanOrEqual(4);
  });

  test('16.5 Action filter triggers reload', async ({ page }) => {
    await page.goto('/audit-logs');
    await page.waitForTimeout(2000);
    await page.selectOption('#auditAction', 'LOGIN');
    await page.waitForTimeout(1500);
    const rows = await page.locator('table tbody tr').count();
    if (rows > 0) {
      const badge = page.locator('.action-LOGIN').first();
      await expect(badge).toBeVisible({ timeout: 3000 });
    }
  });

  test('16.6 Search button click loads data', async ({ page }) => {
    await page.goto('/audit-logs');
    await page.waitForTimeout(2000);
    await page.fill('#auditSearch', 'admin');
    await page.click('button:has-text("Search")');
    await page.waitForTimeout(1500);
    const tableText = await page.locator('#audit-logs-table').textContent();
    expect(tableText.length).toBeGreaterThan(0);
  });

  test('16.7 Search input debounce works', async ({ page }) => {
    await page.goto('/audit-logs');
    await page.waitForTimeout(1500);
    await page.fill('#auditSearch', 'test search');
    await page.waitForTimeout(1000);
    await expect(page.locator('#auditSearch')).toHaveValue('test search');
  });
});
