const { test, expect } = require('@playwright/test');

const ADMIN = { username: 'admin', password: 'Admin@2026' };

test.describe('PAGE 8: SCANNER', () => {

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

  test('8.1 Page elements present', async ({ page }) => {
    await page.goto('/scanner');
    await page.waitForTimeout(2000);
    await expect(page.locator('#scanInput')).toBeVisible({ timeout: 8000 });
    await expect(page.locator('button:has-text("Camera")')).toBeVisible();
    await expect(page.locator('#scanResult')).toBeAttached();
    await expect(page.locator('#scanHistory')).toBeAttached();
  });

  test('8.2 Scan input has correct attributes', async ({ page }) => {
    await page.goto('/scanner');
    await page.waitForTimeout(2000);
    await expect(page.locator('#scanInput')).toHaveAttribute('placeholder', /scan|barcode|student/i);
    await expect(page.locator('#scanInput')).toBeEnabled();
  });

  test('8.3 Camera button opens overlay', async ({ page }) => {
    await page.goto('/scanner');
    await page.waitForTimeout(2000);
    await page.click('button:has-text("Camera")');
    await expect(page.locator('#cameraOverlay')).toBeVisible({ timeout: 5000 });
  });

  test('8.4 Camera overlay close works', async ({ page }) => {
    await page.goto('/scanner');
    await page.waitForTimeout(2000);
    await page.click('button:has-text("Camera")');
    await expect(page.locator('#cameraOverlay')).toBeVisible({ timeout: 5000 });
    await page.locator('#cameraOverlay button:has-text("×")').click();
    await expect(page.locator('#cameraOverlay')).not.toBeVisible();
  });

  test('8.5 Scan input handles Enter key', async ({ page }) => {
    await page.goto('/scanner');
    await page.waitForTimeout(2000);
    await page.locator('#scanInput').press('Enter');
    await page.waitForTimeout(1000);
    await expect(page.locator('#scanInput')).toBeFocused();
  });

  test('8.6 Scan history section present', async ({ page }) => {
    await page.goto('/scanner');
    await page.waitForTimeout(2000);
    await expect(page.locator('#scanHistory')).toBeVisible();
  });
});
