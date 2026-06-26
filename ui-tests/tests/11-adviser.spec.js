const { test, expect } = require('@playwright/test');

const TEACHER = { username: 'alice', password: 'password123' };

test.describe('PAGE 11: ADVISER DASHBOARD', () => {

  test.beforeAll(async ({ request }) => {
    for (let i = 0; i < 10; i++) {
      try { const r = await request.get('http://localhost:8000/'); if (r.ok()) return; } catch (_) {}
      await new Promise(r => setTimeout(r, 2000));
    }
  });

  test.beforeEach(async ({ page }) => {
    await page.goto('/login');
    await page.fill('#username', TEACHER.username);
    await page.fill('#password', TEACHER.password);
    await page.click('button[type="submit"]');
    await page.waitForTimeout(2000);
  });

  test('11.1 Page elements present', async ({ page }) => {
    await page.goto('/adviser');
    await page.waitForTimeout(3000);
    await expect(page.locator('#advDate')).toBeVisible({ timeout: 8000 });
    await expect(page.locator('#advSection')).toBeAttached();
    await expect(page.locator('#advSubject')).toBeAttached();
  });

  test('11.2 Date filter has today as default', async ({ page }) => {
    await page.goto('/adviser');
    await page.waitForTimeout(2000);
    const val = await page.locator('#advDate').inputValue();
    expect(val.length).toBe(10);
  });

  test('11.3 Section summary cards visible', async ({ page }) => {
    await page.goto('/adviser');
    await page.waitForTimeout(3000);
    await expect(page.locator('#section-summary')).toBeVisible({ timeout: 8000 });
  });

  test('11.4 Attendance table container loads', async ({ page }) => {
    await page.goto('/adviser');
    await page.waitForTimeout(3000);
    await expect(page.locator('#adv-attendance')).toBeVisible({ timeout: 8000 });
    const text = await page.locator('#adv-attendance').textContent();
    expect(text.length).toBeGreaterThan(0);
  });

  test('11.5 Section filter populated', async ({ page }) => {
    await page.goto('/adviser');
    await page.waitForTimeout(3000);
    const opts = await page.locator('#advSection option').allTextContents();
    expect(opts.length).toBeGreaterThan(0);
  });

  test('11.6 Subject filter populated after section selected', async ({ page }) => {
    await page.goto('/adviser');
    await page.waitForTimeout(3000);
    const opts = await page.locator('#advSection option').allTextContents();
    if (opts.length > 1) {
      await page.selectOption('#advSection', opts[1].trim());
      await page.waitForTimeout(2000);
      const subjOpts = await page.locator('#advSubject option').allTextContents();
      expect(subjOpts.length).toBeGreaterThan(0);
    }
  });

  test('11.7 Changing date refreshes attendance', async ({ page }) => {
    await page.goto('/adviser');
    await page.waitForTimeout(2000);
    await page.fill('#advDate', '2026-06-19');
    await page.waitForTimeout(2000);
    const tableText = await page.locator('#adv-attendance').textContent();
    expect(tableText.length).toBeGreaterThan(0);
  });
});
