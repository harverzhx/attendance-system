const { test, expect } = require('@playwright/test');

const PARENT = { username: 'parenttester', password: 'password123' };

test.describe('PAGE 14: PARENT NOTIFICATIONS', () => {

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

  test('14.1 Page loads with notification list', async ({ page }) => {
    await page.goto('/parent/notifications');
    await page.waitForTimeout(3000);
    await expect(page.locator('#notification-list')).toBeVisible({ timeout: 8000 });
  });

  test('14.2 Notification cards render if notifications exist', async ({ page }) => {
    await page.goto('/parent/notifications');
    await page.waitForTimeout(3000);
    const notifCards = page.locator('.notif-card');
    const count = await notifCards.count();
    if (count > 0) {
      await expect(notifCards.first()).toBeVisible();
      const text = await notifCards.first().textContent();
      expect(text.length).toBeGreaterThan(0);
    }
  });

  test('14.3 Notification status badges present', async ({ page }) => {
    await page.goto('/parent/notifications');
    await page.waitForTimeout(3000);
    const badges = page.locator('.notif-card .badge');
    const count = await badges.count();
    if (count > 0) {
      await expect(badges.first()).toBeVisible();
    }
  });
});
