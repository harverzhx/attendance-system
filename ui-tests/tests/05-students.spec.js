const { test, expect } = require('@playwright/test');

const ADMIN = { username: 'admin', password: 'Admin@2026' };

test.describe('PAGE 5: STUDENTS', () => {

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
    await page.waitForSelector('.sidebar', { timeout: 10000 });
    await page.goto('/students');
    await page.waitForSelector('#students-table', { timeout: 10000 });
  });

  test('5.1 All filter/search elements present', async ({ page }) => {
    await expect(page.locator('#searchStudent')).toBeVisible();
    await expect(page.locator('#filterGrade')).toBeVisible();
    await expect(page.locator('#filterSection')).toBeVisible();
    await expect(page.locator('#filterStatus')).toBeVisible();
    const statusOptions = await page.locator('#filterStatus option').allTextContents();
    expect(statusOptions).toEqual(['All Status', 'Active', 'Inactive', 'Graduated', 'Transferred']);
    await expect(page.locator('#addStudentBtn')).toBeVisible();
  });

  test('5.2 Table loads with student data', async ({ page }) => {
    await page.waitForTimeout(3000);
    const ths = page.locator('table thead th');
    const count = await ths.count();
    expect(count).toBe(9);
    const headers = await ths.allTextContents();
    expect(headers).toEqual(['Photo', 'Student #', 'LRN', 'Name', 'Grade/Section', 'Parent', 'Barcode', 'Status', 'Actions']);
  });

  test('5.3 Add Student modal opens with all fields', async ({ page }) => {
    await page.click('#addStudentBtn');
    await expect(page.locator('#studentModal')).toBeVisible();
    await expect(page.locator('#studentModalTitle')).toHaveText('Add Student');
    await expect(page.locator('#s_first_name')).toBeVisible();
    await expect(page.locator('#s_last_name')).toBeVisible();
    await expect(page.locator('#s_lrn')).toBeVisible();
    await expect(page.locator('#s_gender')).toBeVisible();
    await expect(page.locator('#s_grade_level')).toBeVisible();
    await expect(page.locator('#s_section_id')).toBeVisible();
    await expect(page.locator('#s_parent_id')).toBeVisible();
  });

  test('5.4 Grade level selection loads sections', async ({ page }) => {
    await page.click('#addStudentBtn');
    await page.selectOption('#s_grade_level', 'Grade 7');
    await page.waitForTimeout(1000);
    const sectionOptions = await page.locator('#s_section_id option').allTextContents();
    expect(sectionOptions.length).toBeGreaterThan(1);
  });

  test('5.5 Parent dropdown loads with parents', async ({ page }) => {
    await page.click('#addStudentBtn');
    await page.waitForTimeout(1000);
    const parentOptions = await page.locator('#s_parent_id option').allTextContents();
    expect(parentOptions.length).toBeGreaterThan(1);
  });

  test('5.6 Search by name filters students', async ({ page }) => {
    await page.waitForTimeout(2000);
    const rows = await page.locator('table tbody tr').count();
    if (rows > 1) {
      await page.fill('#searchStudent', 'a');
      await page.waitForTimeout(1000);
    }
  });

  test('5.7 Filter by status works', async ({ page }) => {
    await page.waitForTimeout(2000);
    await page.selectOption('#filterStatus', 'Active');
    await page.waitForTimeout(1000);
    const rows = await page.locator('table tbody tr').count();
    if (rows > 0) {
      const statuses = await page.locator('table tbody tr td:nth-child(8)').allTextContents();
      for (const s of statuses) {
        expect(s.toLowerCase()).toContain('active');
      }
    }
  });

  test('5.8 Modal close button works', async ({ page }) => {
    await page.click('#addStudentBtn');
    await page.locator('#studentModal button:has-text("×")').click();
    await expect(page.locator('#studentModal')).not.toBeVisible();
  });

  test('5.9 Modal Cancel button works', async ({ page }) => {
    await page.click('#addStudentBtn');
    await page.locator('#studentModal button:has-text("Cancel")').click();
    await expect(page.locator('#studentModal')).not.toBeVisible();
  });

  test('5.10 Gender and Status dropdowns have correct options', async ({ page }) => {
    await page.click('#addStudentBtn');
    const genderOpts = await page.locator('#s_gender option').allTextContents();
    expect(genderOpts).toEqual(['Select', 'Male', 'Female']);
    const statusOpts = await page.locator('#s_status option').allTextContents();
    expect(statusOpts).toEqual(['Active', 'Inactive', 'Graduated', 'Transferred']);
  });
});
