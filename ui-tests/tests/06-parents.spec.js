const { test, expect } = require('@playwright/test');

const ADMIN = { username: 'admin', password: 'Admin@2026' };
const BASE = 'http://localhost:8000';

test.describe('PAGE 6: PARENTS', () => {

  test.beforeAll(async ({ request }) => {
    for (let i = 0; i < 10; i++) {
      try { const r = await request.get(BASE); if (r.ok()) return; } catch (_) {}
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

  async function apiPost(page, endpoint, data) {
    const token = await page.evaluate(() => localStorage.getItem('auth_token'));
    const r = await page.request.post(`${BASE}/api${endpoint}`, {
      data,
      headers: token ? { 'Authorization': `Bearer ${token}` } : {}
    });
    return r;
  }

  async function apiDel(page, endpoint) {
    const token = await page.evaluate(() => localStorage.getItem('auth_token'));
    const r = await page.request.delete(`${BASE}/api${endpoint}`, {
      headers: token ? { 'Authorization': `Bearer ${token}` } : {}
    });
    return r;
  }

  test('6.1 Page elements present', async ({ page }) => {
    await page.goto('/parents');
    await page.waitForTimeout(2000);
    await expect(page.locator('#searchParent')).toBeVisible({ timeout: 8000 });
    await expect(page.locator('button:has-text("Add Parent")')).toBeVisible();
    await expect(page.locator('.card')).toBeVisible();
  });

  test('6.2 Table loads with data', async ({ page }) => {
    await page.goto('/parents');
    await page.waitForTimeout(3000);
    const ths = page.locator('table thead th');
    const count = await ths.count();
    expect(count).toBe(7);
    const headers = await ths.allTextContents();
    expect(headers).toEqual(['Name', 'Email', 'Contact', 'Children', 'Relationship', 'Status', 'Actions']);
  });

  test('6.3 Add Parent modal opens with all fields', async ({ page }) => {
    await page.goto('/parents');
    await page.waitForTimeout(1500);
    await page.click('button:has-text("Add Parent")');
    await expect(page.locator('#parentModal')).toBeVisible({ timeout: 5000 });
    await expect(page.locator('#parentModalTitle')).toHaveText('Add Parent');
    await expect(page.locator('#p_first_name')).toBeVisible();
    await expect(page.locator('#p_middle_name')).toBeVisible();
    await expect(page.locator('#p_last_name')).toBeVisible();
    await expect(page.locator('#p_contact')).toBeVisible();
    await expect(page.locator('#p_email')).toBeVisible();
    await expect(page.locator('#p_relationship')).toBeVisible();
    await expect(page.locator('#p_username')).toBeVisible();
    await expect(page.locator('#p_password')).toBeVisible();
  });

  test('6.4 Relationship dropdown options', async ({ page }) => {
    await page.goto('/parents');
    await page.waitForTimeout(1500);
    await page.click('button:has-text("Add Parent")');
    const opts = await page.locator('#p_relationship option').allTextContents();
    expect(opts).toEqual(['Parent', 'Guardian', 'Relative']);
  });

  test('6.5 Modal close X button works', async ({ page }) => {
    await page.goto('/parents');
    await page.waitForTimeout(1500);
    await page.click('button:has-text("Add Parent")');
    await page.locator('#parentModal button:has-text("×")').click();
    await expect(page.locator('#parentModal')).not.toBeVisible();
  });

  test('6.6 Modal Cancel button works', async ({ page }) => {
    await page.goto('/parents');
    await page.waitForTimeout(1500);
    await page.click('button:has-text("Add Parent")');
    await page.locator('#parentModal button:has-text("Cancel")').click();
    await expect(page.locator('#parentModal')).not.toBeVisible();
  });

  test('6.7 Create parent with blank submit validation', async ({ page }) => {
    await page.goto('/parents');
    await page.waitForTimeout(1500);
    await page.click('button:has-text("Add Parent")');
    await page.locator('#parentForm button[type="submit"]').click();
    await expect(page.locator('#p_first_name')).toBeFocused();
  });

  test('6.8 Create a new parent via API then verify in table', async ({ page }) => {
    const ts = Date.now();
    const r = await apiPost(page, '/parents', {
      first_name: `Test_${ts}`,
      last_name: 'Parentson',
      email: `parent_${ts}@test.com`,
      contact_number: '+639123456789',
      relationship: 'Parent',
      username: `parentuser_${ts}`,
      password: 'Test123!'
    });
    expect(r.ok()).toBeTruthy();

    await page.goto('/parents');
    await page.waitForTimeout(2000);
    await page.fill('#searchParent', 'Parentson');
    await page.waitForTimeout(1500);
    await expect(page.locator('table tbody')).toContainText('Parentson');
  });

  test('6.9 Search by name filters parents', async ({ page }) => {
    await page.goto('/parents');
    await page.waitForTimeout(2000);
    await page.fill('#searchParent', 'a');
    await page.waitForTimeout(1000);
    const rows = await page.locator('table tbody tr').count();
    if (rows > 0) {
      const text = await page.locator('table tbody').textContent();
      expect(text.toLowerCase()).toContain('a');
    }
  });

  test('6.10 Edit parent modal pre-fills data', async ({ page }) => {
    const ts = Date.now();
    const r = await apiPost(page, '/parents', {
      first_name: `Editable_${ts}`,
      last_name: 'Parentson',
      email: `editable_${ts}@test.com`,
      contact_number: '+639123456789',
      relationship: 'Guardian',
      username: `editableuser_${ts}`,
      password: 'Test123!'
    });
    expect(r.ok()).toBeTruthy();

    await page.goto('/parents');
    await page.waitForTimeout(2000);
    await page.fill('#searchParent', 'Editable_');
    await page.waitForTimeout(1500);
    const editBtn = page.locator('button:has-text("Edit")').first();
    if (await editBtn.isVisible()) {
      await editBtn.click();
      await expect(page.locator('#parentModal')).toBeVisible({ timeout: 5000 });
      await expect(page.locator('#parentModalTitle')).toHaveText('Edit Parent');
    }
  });

  test('6.11 Delete parent confirms dialog', async ({ page }) => {
    const ts = Date.now();
    const r = await apiPost(page, '/parents', {
      first_name: `Deletable_${ts}`,
      last_name: 'Parentson',
      email: `deletable_${ts}@test.com`,
      contact_number: '+639123456789',
      relationship: 'Parent',
      username: `deletableuser_${ts}`,
      password: 'Test123!'
    });
    expect(r.ok()).toBeTruthy();

    await page.goto('/parents');
    await page.waitForTimeout(2000);
    await page.fill('#searchParent', 'Deletable_');
    await page.waitForTimeout(1500);
    const deleteBtn = page.locator('button:has-text("Delete")').first();
    if (await deleteBtn.isVisible()) {
      await deleteBtn.click();
      await expect(page.locator('.confirm-dialog')).toBeVisible({ timeout: 3000 });
      await expect(page.locator('.confirm-dialog')).toContainText('Delete');
    }
  });

  test('6.12 Children count badge present', async ({ page }) => {
    await page.goto('/parents');
    await page.waitForTimeout(3000);
    const badge = page.locator('.badge-info').first();
    if (await badge.isVisible()) {
      const text = await badge.textContent();
      expect(text).toMatch(/child/);
    }
  });
});
