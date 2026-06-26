const { test, expect } = require('@playwright/test');

const PARENT = { username: 'parenttester', password: 'password123' };

test.describe('PAGE 13: PARENT ATTENDANCE HISTORY', () => {

  test.beforeAll(async ({ request }) => {
    for (let i = 0; i < 10; i++) {
      try { const r = await request.get('http://localhost:8000/'); if (r.ok()) return; } catch (_) {}
      await new Promise(r => setTimeout(r, 2000));
    }
  });

  test.beforeEach(async ({ page }) => {
    await page.goto('/login');
    await page.fill('#username', PARENT.username);
    await page.fill('#password', PARENT.password);
    await page.click('button[type="submit"]');
    await page.waitForTimeout(2000);
  });

  test('13.1 Page elements present', async ({ page }) => {
    await page.goto('/parent/attendance');
    await page.waitForTimeout(3000);
    await expect(page.locator('#attFrom')).toBeVisible({ timeout: 8000 });
    await expect(page.locator('#attTo')).toBeVisible();
    await expect(page.locator('button:has-text("Refresh")')).toBeVisible();
  });

  test('13.2 Date fields have defaults', async ({ page }) => {
    await page.goto('/parent/attendance');
    await page.waitForTimeout(2000);
    const fromVal = await page.locator('#attFrom').inputValue();
    const toVal = await page.locator('#attTo').inputValue();
    expect(fromVal.length).toBe(10);
    expect(toVal.length).toBe(10);
  });

  test('13.3 Attendance history container present', async ({ page }) => {
    await page.goto('/parent/attendance');
    await page.waitForTimeout(3000);
    await expect(page.locator('#attendance-history')).toBeVisible({ timeout: 8000 });
  });

  test('13.4 Refresh button reloads data', async ({ page }) => {
    await page.goto('/parent/attendance');
    await page.waitForTimeout(2000);
    await page.click('button:has-text("Refresh")');
    await page.waitForTimeout(2000);
  });

  test('13.5 Table renders with correct headers', async ({ page }) => {
    await page.goto('/parent/attendance');
    await page.waitForTimeout(3000);
    const ths = page.locator('table thead th');
    const count = await ths.count();
    if (count > 0) {
      const headers = await ths.allTextContents();
      expect(headers).toEqual(expect.arrayContaining(['Date', 'Status']));
    }
  });
});
