const { test, expect } = require('@playwright/test');

const ADMIN = { username: 'admin', password: 'Admin@2026' };
const BASE = 'http://localhost:8000';

test.describe('PAGE 7: SECTIONS', () => {

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
    return await page.request.post(`${BASE}/api${endpoint}`, {
      data,
      headers: token ? { 'Authorization': `Bearer ${token}` } : {}
    });
  }

  test('7.1 All filter elements present', async ({ page }) => {
    await page.goto('/sections');
    await page.waitForTimeout(2000);
    await expect(page.locator('#filterGrade')).toBeVisible({ timeout: 8000 });
    await expect(page.locator('#searchSection')).toBeVisible();
    await expect(page.locator('button:has-text("Add Section")')).toBeVisible();
    const gradeOpts = await page.locator('#filterGrade option').allTextContents();
    expect(gradeOpts).toEqual(['All Grades', 'Grade 7', 'Grade 8', 'Grade 9', 'Grade 10', 'Grade 11', 'Grade 12']);
  });

  test('7.2 Table loads with correct headers', async ({ page }) => {
    await page.goto('/sections');
    await page.waitForTimeout(3000);
    const ths = page.locator('table thead th');
    expect(await ths.count()).toBe(7);
    const headers = await ths.allTextContents();
    expect(headers).toEqual(['Grade Level', 'Section', 'Students', 'Adviser', 'School Year', 'Status', 'Actions']);
  });

  test('7.3 Add Section modal opens with all fields', async ({ page }) => {
    await page.goto('/sections');
    await page.waitForTimeout(1500);
    await page.click('button:has-text("Add Section")');
    await expect(page.locator('#sectionModal')).toBeVisible({ timeout: 5000 });
    await expect(page.locator('#sectionModalTitle')).toHaveText('Add Section');
    await expect(page.locator('#sec_grade_level')).toBeVisible();
    await expect(page.locator('#sec_section_name')).toBeVisible();
    await expect(page.locator('#sec_adviser_id')).toBeVisible();
    await expect(page.locator('#sec_school_year')).toBeVisible();
  });

  test('7.4 Grade level dropdown options', async ({ page }) => {
    await page.goto('/sections');
    await page.waitForTimeout(1500);
    await page.click('button:has-text("Add Section")');
    const opts = await page.locator('#sec_grade_level option').allTextContents();
    expect(opts).toEqual(['Select', 'Grade 7', 'Grade 8', 'Grade 9', 'Grade 10', 'Grade 11', 'Grade 12']);
  });

  test('7.5 Modal close X button works', async ({ page }) => {
    await page.goto('/sections');
    await page.waitForTimeout(1500);
    await page.click('button:has-text("Add Section")');
    await page.locator('#sectionModal button:has-text("×")').click();
    await expect(page.locator('#sectionModal')).not.toBeVisible();
  });

  test('7.6 Modal Cancel button works', async ({ page }) => {
    await page.goto('/sections');
    await page.waitForTimeout(1500);
    await page.click('button:has-text("Add Section")');
    await page.locator('#sectionModal button:has-text("Cancel")').click();
    await expect(page.locator('#sectionModal')).not.toBeVisible();
  });

  test('7.7 Blank submit shows validation', async ({ page }) => {
    await page.goto('/sections');
    await page.waitForTimeout(1500);
    await page.click('button:has-text("Add Section")');
    await page.locator('#sectionForm button[type="submit"]').click();
    await expect(page.locator('#sec_grade_level')).toBeFocused();
  });

  test('7.8 Filter by grade level works', async ({ page }) => {
    await page.goto('/sections');
    await page.waitForTimeout(2000);
    await page.selectOption('#filterGrade', 'Grade 7');
    await page.waitForTimeout(1000);
    const rows = await page.locator('table tbody tr').count();
    if (rows > 0) {
      const texts = await page.locator('table tbody tr td:first-child strong').allTextContents();
      for (const t of texts) expect(t).toBe('Grade 7');
    }
  });

  test('7.9 Search section by name', async ({ page }) => {
    await page.goto('/sections');
    await page.waitForTimeout(2000);
    await page.fill('#searchSection', 'a');
    await page.waitForTimeout(1000);
    const rows = await page.locator('table tbody tr').count();
    if (rows > 0) {
      const text = await page.locator('table tbody').textContent();
      expect(text.toLowerCase()).toContain('a');
    }
  });

  test('7.10 Create section via API then verify', async ({ page }) => {
    const ts = Date.now();
    const r = await apiPost(page, '/sections', {
      grade_level: 'Grade 7',
      section_name: `TestSection_${ts}`,
      school_year: '2026-2027'
    });
    expect(r.ok()).toBeTruthy();

    await page.goto('/sections');
    await page.waitForTimeout(2000);
    await page.fill('#searchSection', `TestSection_`);
    await page.waitForTimeout(1500);
    await expect(page.locator('table tbody')).toContainText(`TestSection_`);
  });

  test('7.11 Edit section modal pre-fills', async ({ page }) => {
    const ts = Date.now();
    const r = await apiPost(page, '/sections', {
      grade_level: 'Grade 8',
      section_name: `EditSection_${ts}`,
      school_year: '2026-2027'
    });
    expect(r.ok()).toBeTruthy();

    await page.goto('/sections');
    await page.waitForTimeout(2000);
    await page.fill('#searchSection', 'EditSection_');
    await page.waitForTimeout(1500);
    const editBtn = page.locator('button:has-text("Edit")').first();
    if (await editBtn.isVisible()) {
      await editBtn.click();
      await expect(page.locator('#sectionModal')).toBeVisible({ timeout: 5000 });
      await expect(page.locator('#sectionModalTitle')).toHaveText('Edit Section');
    }
  });

  test('7.12 Delete section confirms dialog', async ({ page }) => {
    const ts = Date.now();
    const r = await apiPost(page, '/sections', {
      grade_level: 'Grade 9',
      section_name: `DeleteSection_${ts}`,
      school_year: '2026-2027'
    });
    expect(r.ok()).toBeTruthy();

    await page.goto('/sections');
    await page.waitForTimeout(2000);
    await page.fill('#searchSection', 'DeleteSection_');
    await page.waitForTimeout(1500);
    const deleteBtn = page.locator('button:has-text("Delete")').first();
    if (await deleteBtn.isVisible()) {
      await deleteBtn.click();
      await expect(page.locator('.confirm-dialog')).toBeVisible({ timeout: 3000 });
      await expect(page.locator('.confirm-dialog')).toContainText('Delete');
    }
  });

  test('7.13 Student count badge has class', async ({ page }) => {
    await page.goto('/sections');
    await page.waitForTimeout(3000);
    const badge = page.locator('.student-count-badge').first();
    if (await badge.isVisible()) {
      const text = await badge.textContent();
      expect(text).toMatch(/\d+/);
    }
  });

  test('7.14 Non-existent search shows no sections', async ({ page }) => {
    await page.goto('/sections');
    await page.waitForTimeout(1500);
    await page.fill('#searchSection', 'ZZZZNONEXISTENTZZZZ_99483');
    await page.waitForTimeout(1000);
    const text = await page.locator('table tbody').textContent();
    expect(text).toContain('No sections found');
  });
});
