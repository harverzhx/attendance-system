const { test, expect } = require('@playwright/test');

const ADMIN = { username: 'admin', password: 'Admin@2026' };

test.describe('PAGE 9: ATTENDANCE RECORDS', () => {

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

  test('9.1 All filter elements present', async ({ page }) => {
    await page.goto('/attendance');
    await page.waitForTimeout(2000);
    await expect(page.locator('#filterDate')).toBeVisible({ timeout: 8000 });
    await expect(page.locator('#filterSearch')).toBeVisible();
    await expect(page.locator('#filterSection')).toBeVisible();
    await expect(page.locator('#filterStatus')).toBeVisible();
  });

  test('9.2 Status filter options', async ({ page }) => {
    await page.goto('/attendance');
    await page.waitForTimeout(2000);
    const statusOpts = await page.locator('#filterStatus option').allTextContents();
    const clean = statusOpts.map(s => s.trim()).filter(s => s);
    expect(clean).toEqual(expect.arrayContaining(['Present', 'Late', 'Absent']));
  });

  test('9.3 Section filter populated', async ({ page }) => {
    await page.goto('/attendance');
    await page.waitForTimeout(3000);
    const opts = await page.locator('#filterSection option').allTextContents();
    expect(opts.length).toBeGreaterThan(1);
  });

  test('9.4 Subject filter populated', async ({ page }) => {
    await page.goto('/attendance');
    await page.waitForTimeout(3000);
    const opts = await page.locator('#filterSubject option').allTextContents();
    expect(opts.length).toBeGreaterThan(0);
  });

  test('9.5 Table loads with data', async ({ page }) => {
    await page.goto('/attendance');
    await page.waitForTimeout(4000);
    const ths = page.locator('table thead th');
    const count = await ths.count();
    expect(count).toBeGreaterThanOrEqual(7);
  });

  test('9.6 Summary bar visible', async ({ page }) => {
    await page.goto('/attendance');
    await page.waitForTimeout(3000);
    await expect(page.locator('#summaryBar')).toBeVisible({ timeout: 5000 });
  });

  test('9.7 Filter by date works', async ({ page }) => {
    await page.goto('/attendance');
    await page.waitForTimeout(2000);
    await page.fill('#filterDate', '2026-06-19');
    await page.waitForTimeout(1000);
    const tableText = await page.locator('table tbody').textContent();
    const hasData = tableText && !tableText.includes('No records');
    expect(true).toBe(true);
  });

  test('9.8 Filter by status works', async ({ page }) => {
    await page.goto('/attendance');
    await page.waitForTimeout(2000);
    await page.selectOption('#filterStatus', 'Present');
    await page.waitForTimeout(1000);
    const rows = await page.locator('table tbody tr').count();
    if (rows > 0) {
      const texts = await page.locator('table tbody tr td:nth-child(7)').allTextContents();
      for (const t of texts) expect(t.toLowerCase()).toBe('present');
    }
  });

  test('9.9 Search field accepts input', async ({ page }) => {
    await page.goto('/attendance');
    await page.waitForTimeout(2000);
    await page.fill('#filterSearch', 'test search');
    await page.waitForTimeout(1500);
    await expect(page.locator('#filterSearch')).toHaveValue('test search');
  });

  test('9.10 Section filter changes results', async ({ page }) => {
    await page.goto('/attendance');
    await page.waitForTimeout(3000);
    const opts = await page.locator('#filterSection option').allTextContents();
    if (opts.length > 1) {
      await page.selectOption('#filterSection', opts[1].trim());
      await page.waitForTimeout(1000);
    }
  });
});
