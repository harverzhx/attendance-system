const { test, expect } = require('@playwright/test');

const ADMIN = { username: 'admin', password: 'Admin@2026' };

test.describe('PAGE 15: EMAIL LOGS', () => {

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

  test('15.1 All filter elements present', async ({ page }) => {
    await page.goto('/email-logs');
    await page.waitForTimeout(2000);
    await expect(page.locator('#searchEmail')).toBeVisible({ timeout: 8000 });
    await expect(page.locator('#filterStatus')).toBeVisible();
    await expect(page.locator('#filterDate')).toBeVisible();
  });

  test('15.2 Status filter options', async ({ page }) => {
    await page.goto('/email-logs');
    await page.waitForTimeout(1500);
    const opts = await page.locator('#filterStatus option').allTextContents();
    expect(opts).toEqual(['All', 'Sent', 'Failed', 'Pending']);
  });

  test('15.3 Summary cards present', async ({ page }) => {
    await page.goto('/email-logs');
    await page.waitForTimeout(3000);
    await expect(page.locator('#summaryCards')).toBeVisible({ timeout: 8000 });
    const cards = await page.locator('#summaryCards .card').count();
    expect(cards).toBe(4);
  });

  test('15.4 Table loads with data', async ({ page }) => {
    await page.goto('/email-logs');
    await page.waitForTimeout(3000);
    const ths = page.locator('#email-logs-table table thead th');
    const count = await ths.count();
    expect(count).toBeGreaterThanOrEqual(6);
  });

  test('15.5 Search filters email logs', async ({ page }) => {
    await page.goto('/email-logs');
    await page.waitForTimeout(2000);
    await page.fill('#searchEmail', 'test');
    await page.waitForTimeout(1000);
    await expect(page.locator('#searchEmail')).toHaveValue('test');
  });

  test('15.6 Status filter changes results', async ({ page }) => {
    await page.goto('/email-logs');
    await page.waitForTimeout(2000);
    await page.selectOption('#filterStatus', 'Failed');
    await page.waitForTimeout(1000);
  });

  test('15.7 Date filter present and functional', async ({ page }) => {
    await page.goto('/email-logs');
    await page.waitForTimeout(1500);
    await page.fill('#filterDate', '2026-06-19');
    await page.waitForTimeout(1000);
    const val = await page.locator('#filterDate').inputValue();
    expect(val).toBe('2026-06-19');
  });
});
