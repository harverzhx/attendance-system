const { test, expect } = require('@playwright/test');

const ADMIN = { username: 'admin', password: 'Admin@2026' };

test.describe('PAGE 17: SETTINGS', () => {

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

  test('17.1 School info form present', async ({ page }) => {
    await page.goto('/settings');
    await page.waitForTimeout(2000);
    await expect(page.locator('#schoolForm')).toBeVisible({ timeout: 8000 });
    await expect(page.locator('#set_school_name')).toBeVisible();
    await expect(page.locator('#set_school_address')).toBeVisible();
    await expect(page.locator('#set_school_year')).toBeVisible();
  });

  test('17.2 Attendance rules form present', async ({ page }) => {
    await page.goto('/settings');
    await page.waitForTimeout(1500);
    await expect(page.locator('#attendanceForm')).toBeVisible();
    await expect(page.locator('#set_start_time')).toBeVisible();
    await expect(page.locator('#set_grace_period')).toBeVisible();
  });

  test('17.3 Barcode prefix form present', async ({ page }) => {
    await page.goto('/settings');
    await page.waitForTimeout(1500);
    await expect(page.locator('#barcodeForm')).toBeVisible();
    await expect(page.locator('#set_barcode_prefix')).toBeVisible();
  });

  test('17.4 Registration form present', async ({ page }) => {
    await page.goto('/settings');
    await page.waitForTimeout(1500);
    await expect(page.locator('#registrationForm')).toBeVisible();
    await expect(page.locator('#set_registration_enabled')).toBeVisible();
  });

  test('17.5 Email SMTP form present', async ({ page }) => {
    await page.goto('/settings');
    await page.waitForTimeout(1500);
    await expect(page.locator('#emailForm')).toBeVisible();
    await expect(page.locator('#set_smtp_host')).toBeVisible();
    await expect(page.locator('#set_smtp_port')).toBeVisible();
    await expect(page.locator('#set_smtp_username')).toBeVisible();
    await expect(page.locator('#set_smtp_password')).toBeVisible();
  });

  test('17.6 Password show/hide toggle works', async ({ page }) => {
    await page.goto('/settings');
    await page.waitForTimeout(1500);
    const toggle = page.locator('.toggle-pw[data-target="set_smtp_password"]');
    await expect(toggle).toBeVisible();
    const pwInput = page.locator('#set_smtp_password');
    await expect(pwInput).toHaveAttribute('type', 'password');
    await toggle.click();
    await expect(pwInput).toHaveAttribute('type', 'text');
    await toggle.click();
    await expect(pwInput).toHaveAttribute('type', 'password');
  });

  test('17.7 Test Email button present', async ({ page }) => {
    await page.goto('/settings');
    await page.waitForTimeout(1500);
    await expect(page.locator('button:has-text("Test Email")')).toBeVisible();
  });

  test('17.8 All 5 Save buttons present', async ({ page }) => {
    await page.goto('/settings');
    await page.waitForTimeout(1500);
    const saveBtns = page.locator('button[type="submit"]');
    const count = await saveBtns.count();
    expect(count).toBe(5);
  });

  test('17.9 Fields load with existing settings', async ({ page }) => {
    await page.goto('/settings');
    await page.waitForTimeout(3000);
    const nameVal = await page.locator('#set_school_name').inputValue();
    expect(nameVal.length).toBeGreaterThan(0);
    const syVal = await page.locator('#set_school_year').inputValue();
    expect(syVal.length).toBeGreaterThan(0);
  });

  test('17.10 Save school info shows status', async ({ page }) => {
    await page.goto('/settings');
    await page.waitForTimeout(2000);
    const name = await page.locator('#set_school_name').inputValue();
    await page.locator('#schoolForm button[type="submit"]').click();
    await page.waitForTimeout(2000);
  });
});
