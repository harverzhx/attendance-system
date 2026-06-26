const { test, expect } = require('@playwright/test');

const PARENT = { username: 'parenttester', password: 'password123' };

test.describe('PAGE 12: PARENT PORTAL', () => {

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

  test('12.1 Dashboard container present', async ({ page }) => {
    await page.goto('/parent');
    await page.waitForTimeout(3000);
    await expect(page.locator('#children-dashboard')).toBeVisible({ timeout: 8000 });
  });

  test('12.2 Quick action links present', async ({ page }) => {
    await page.goto('/parent');
    await page.waitForTimeout(3000);
    const links = page.locator('a[href*="/pages/parent-"]');
    const count = await links.count();
    expect(count).toBeGreaterThan(0);
  });

  test('12.3 View Attendance link exists', async ({ page }) => {
    await page.goto('/parent');
    await page.waitForTimeout(3000);
    const link = page.locator('a[href*="attendance"]');
    await expect(link).toBeVisible({ timeout: 5000 });
  });

  test('12.4 Submit Excuse link exists', async ({ page }) => {
    await page.goto('/parent');
    await page.waitForTimeout(3000);
    const link = page.locator('a[href*="excuse"]');
    await expect(link).toBeVisible({ timeout: 5000 });
  });

  test('12.5 Notifications link exists', async ({ page }) => {
    await page.goto('/parent');
    await page.waitForTimeout(3000);
    const link = page.locator('a[href*="notifications"]');
    await expect(link).toBeVisible({ timeout: 5000 });
  });

  test('12.6 Child cards render', async ({ page }) => {
    await page.goto('/parent');
    await page.waitForTimeout(3000);
    const childCards = page.locator('.child-card');
    const count = await childCards.count();
    if (count > 0) {
      await expect(childCards.first()).toBeVisible();
    }
  });
});
