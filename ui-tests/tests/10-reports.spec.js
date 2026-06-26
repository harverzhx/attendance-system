const { test, expect } = require('@playwright/test');

const ADMIN = { username: 'admin', password: 'Admin@2026' };

test.describe('PAGE 10: REPORTS', () => {

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

  test('10.1 All filter elements present', async ({ page }) => {
    await page.goto('/reports');
    await page.waitForTimeout(2000);
    await expect(page.locator('#reportType')).toBeVisible({ timeout: 8000 });
    await expect(page.locator('#reportDateFrom')).toBeVisible();
    await page.selectOption('#reportType', 'section');
    await page.waitForTimeout(500);
    await expect(page.locator('#reportDateTo')).toBeVisible();
    await expect(page.locator('#reportSection')).toBeVisible();
  });

  test('10.2 Report type options', async ({ page }) => {
    await page.goto('/reports');
    await page.waitForTimeout(1500);
    const opts = await page.locator('#reportType option').allTextContents();
    expect(opts).toEqual(['Daily Attendance', 'Per Section Report', 'Late Students', 'Absent Students']);
  });

  test('10.3 Export CSV button present', async ({ page }) => {
    await page.goto('/reports');
    await page.waitForTimeout(1500);
    await expect(page.locator('button:has-text("Export")')).toBeVisible();
  });

  test('10.4 Report container and summary area present', async ({ page }) => {
    await page.goto('/reports');
    await page.waitForTimeout(1500);
    await expect(page.locator('#report-result')).toBeVisible();
    await expect(page.locator('#summaryTop')).toBeVisible();
  });

  test('10.5 Date To field visible for non-daily reports', async ({ page }) => {
    await page.goto('/reports');
    await page.waitForTimeout(1500);
    await page.selectOption('#reportType', 'section');
    await page.waitForTimeout(500);
    await expect(page.locator('#dateToGroup')).toBeVisible();
    await expect(page.locator('#sectionGroup')).toBeVisible();
  });

  test('10.6 Date To field hidden for daily report', async ({ page }) => {
    await page.goto('/reports');
    await page.waitForTimeout(1500);
    await page.selectOption('#reportType', 'daily');
    await page.waitForTimeout(500);
    await expect(page.locator('#dateToGroup')).toBeHidden();
    await expect(page.locator('#sectionGroup')).toBeHidden();
  });

  test('10.7 Section filter populated for section report', async ({ page }) => {
    await page.goto('/reports');
    await page.waitForTimeout(2000);
    await page.selectOption('#reportType', 'section');
    await page.waitForTimeout(2000);
    const opts = await page.locator('#reportSection option').allTextContents();
    expect(opts.length).toBeGreaterThan(1);
  });

  test('10.8 Daily report generates data', async ({ page }) => {
    await page.goto('/reports');
    await page.waitForTimeout(2000);
    await page.fill('#reportDateFrom', '2026-06-19');
    await page.waitForTimeout(2000);
    const summaryText = await page.locator('#summaryTop').textContent();
    expect(summaryText.length).toBeGreaterThan(0);
  });

  test('10.9 Late report generates data', async ({ page }) => {
    await page.goto('/reports');
    await page.waitForTimeout(1500);
    await page.selectOption('#reportType', 'late');
    await page.waitForTimeout(500);
    await page.fill('#reportDateFrom', '2026-06-01');
    await page.fill('#reportDateTo', '2026-06-19');
    await page.waitForTimeout(2000);
  });
});
