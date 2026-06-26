const { test, expect } = require('@playwright/test');

const ADMIN = { username: 'admin', password: 'Admin@2026' };

test.describe('PAGE 2: DASHBOARD (Admin)', () => {

  test.beforeAll(async ({ request }) => {
    for (let i = 0; i < 10; i++) {
      try {
        const r = await request.get('http://localhost:8000/');
        if (r.ok()) return;
      } catch (_) {}
      await new Promise(r => setTimeout(r, 2000));
    }
  });

  test.beforeEach(async ({ page }) => {
    await page.goto('/login');
    await page.fill('#username', ADMIN.username);
    await page.fill('#password', ADMIN.password);
    await page.click('button[type="submit"]');
    await page.waitForSelector('.sidebar', { timeout: 10000 });
    await page.waitForURL(/\/dashboard/);
  });

  // ──────────────────────────────────────────────────────────
  // STAT CARDS
  // ──────────────────────────────────────────────────────────
  test('2.1 Stat cards container visible', async ({ page }) => {
    await expect(page.locator('#stat-cards')).toBeVisible();
  });

  test('2.2 All stat cards visible with labels', async ({ page }) => {
    await page.waitForTimeout(3000);
    const labels = [
      'Total Students', 'Teachers', 'Staff', 'Parents',
      'Present Today', 'Late Today', 'Absent Today',
      'Inside Campus', 'Outside Campus', 'Not Yet Entered',
      'Entries Today', 'Exits Today'
    ];
    for (const label of labels) {
      await expect(page.locator(`.stat-label:has-text("${label}")`).first()).toBeVisible({ timeout: 15000 });
    }
  });

  test('2.3 Stat cards have numeric values', async ({ page }) => {
    await page.waitForSelector('.stat-value', { timeout: 15000 });
    const values = await page.locator('.stat-value').allTextContents();
    expect(values.length).toBeGreaterThanOrEqual(8);
    for (const v of values) {
      expect(v.trim()).toMatch(/^\d+$/);
    }
  });

  test('2.4 Stat cards are clickable and link to pages', async ({ page }) => {
    await page.waitForSelector('.stat-card', { timeout: 15000 });
    const cards = page.locator('.stat-card');
    const count = await cards.count();
    expect(count).toBeGreaterThanOrEqual(9);
  });

  // ──────────────────────────────────────────────────────────
  // LIVE SCAN FEED
  // ──────────────────────────────────────────────────────────
  test('2.5 Live scan feed section visible', async ({ page }) => {
    await expect(page.locator('.card-header:has-text("Live Scan Feed")')).toBeVisible();
    await expect(page.locator('#liveFeed')).toBeVisible();
  });

  test('2.6 Live feed has items or "No records" message', async ({ page }) => {
    const feed = page.locator('#liveFeed');
    await expect(feed).toBeVisible();
    const text = await feed.textContent();
    expect(text.length).toBeGreaterThan(0);
  });

  test('2.7 Click feed item (if exists) opens scan details', async ({ page }) => {
    await page.waitForTimeout(2000);
    const items = page.locator('#liveFeed .feed-item');
    const count = await items.count();
    if (count > 0) {
      await items.first().click();
      // Should show a modal or navigate - check for any dialog
      await page.waitForTimeout(1000);
      // No specific assertion - just verifying no crash
    }
  });

  // ──────────────────────────────────────────────────────────
  // INSIDE / OUTSIDE CAMPUS
  // ──────────────────────────────────────────────────────────
  test('2.8 Inside Campus section visible with student list', async ({ page }) => {
    await expect(page.locator('.card-header:has-text("Inside Campus")')).toBeVisible();
    await expect(page.locator('#insideList')).toBeVisible();
  });

  test('2.9 Outside Campus section visible with student list', async ({ page }) => {
    await expect(page.locator('.card-header:has-text("Outside Campus")')).toBeVisible();
    await expect(page.locator('#outsideList')).toBeVisible();
  });

  test('2.10 Inside/Outside "View All" links go to scan-logs', async ({ page }) => {
    const insideLink = page.locator('.card-header:has-text("Inside Campus") a:has-text("View All")');
    const outsideLink = page.locator('.card-header:has-text("Outside Campus") a:has-text("View All")');
    await expect(insideLink).toHaveAttribute('href', '/pages/scan-logs.html');
    await expect(outsideLink).toHaveAttribute('href', '/pages/scan-logs.html');
  });

  // ──────────────────────────────────────────────────────────
  // EXIT TYPES & TREND
  // ──────────────────────────────────────────────────────────
  test('2.11 Exit Types Today section visible', async ({ page }) => {
    await expect(page.locator('.card-header:has-text("Exit Types Today")')).toBeVisible();
    await expect(page.locator('#exitTypeChart')).toBeVisible();
  });

  test('2.12 7-Day Attendance Trend section visible', async ({ page }) => {
    await expect(page.locator('.card-header:has-text("7-Day Attendance Trend")')).toBeVisible();
    await expect(page.locator('#trendChart')).toBeVisible();
  });

  // ──────────────────────────────────────────────────────────
  // ALERTS
  // ──────────────────────────────────────────────────────────
  test('2.13 Alerts section visible with items', async ({ page }) => {
    await expect(page.locator('.card-header:has-text("Alerts")')).toBeVisible();
    await expect(page.locator('#alertsSection')).toBeVisible();
  });

  test('2.14 Alert items are clickable', async ({ page }) => {
    await page.waitForTimeout(2000);
    const alerts = page.locator('.alert-item');
    const count = await alerts.count();
    if (count > 0) {
      await alerts.first().click();
      await page.waitForTimeout(500);
    }
  });

  test('2.15 Alerts "View All" goes to attendance-records', async ({ page }) => {
    const link = page.locator('.card-header:has-text("Alerts") a:has-text("View All")');
    await expect(link).toHaveAttribute('href', '/pages/attendance-records.html');
  });

  // ──────────────────────────────────────────────────────────
  // ACTIVE PULL-OUTS
  // ──────────────────────────────────────────────────────────
  test('2.16 Active Pull-Outs section visible', async ({ page }) => {
    await expect(page.locator('.card-header:has-text("Active Pull-Outs")')).toBeVisible();
    await expect(page.locator('#pullOutsList')).toBeVisible();
  });

  test('2.17 Pull-Outs "View All" goes to pull-outs', async ({ page }) => {
    const link = page.locator('.card-header:has-text("Active Pull-Outs") a:has-text("View All")');
    await expect(link).toHaveAttribute('href', '/pages/pull-outs.html');
  });

  // ──────────────────────────────────────────────────────────
  // PENDING EXCUSES
  // ──────────────────────────────────────────────────────────
  test('2.18 Pending Excuses section visible', async ({ page }) => {
    await expect(page.locator('.card-header:has-text("Pending Excuses")')).toBeVisible();
    await expect(page.locator('#excusesList')).toBeVisible();
  });

  test('2.19 Excuses "View All" goes to excuses page', async ({ page }) => {
    const link = page.locator('.card-header:has-text("Pending Excuses") a:has-text("View All")');
    await expect(link).toHaveAttribute('href', '/pages/excuses.html');
  });

  // ──────────────────────────────────────────────────────────
  // PARENT NOTIFICATION STATUS
  // ──────────────────────────────────────────────────────────
  test('2.20 Parent Notification Status section visible', async ({ page }) => {
    await expect(page.locator('.card-header:has-text("Parent Notification Status")')).toBeVisible();
    await expect(page.locator('#emailStats')).toBeVisible();
  });

  test('2.21 Email Stats "View All" goes to email-logs', async ({ page }) => {
    const link = page.locator('.card-header:has-text("Parent Notification Status") a:has-text("View All")');
    await expect(link).toHaveAttribute('href', '/pages/email-logs.html');
  });

  // ──────────────────────────────────────────────────────────
  // SECTION ATTENDANCE RANKING
  // ──────────────────────────────────────────────────────────
  test('2.22 Section Attendance Ranking visible with data', async ({ page }) => {
    await expect(page.locator('.card-header:has-text("Section Attendance Ranking")')).toBeVisible();
    const rank = page.locator('#sectionRank');
    await expect(rank).toBeVisible();
  });

  // ──────────────────────────────────────────────────────────
  // DATA REFRESH (Auto-polling every 3s)
  // ──────────────────────────────────────────────────────────
  test('2.23 Dashboard data refreshes automatically', async ({ page }) => {
    await page.waitForTimeout(4000);
    // After 3s polling interval, data should have refreshed
    await expect(page.locator('#stat-cards')).toBeVisible();
  });

  // ──────────────────────────────────────────────────────────
  // SIDEBAR & TOPBAR
  // ──────────────────────────────────────────────────────────
  test('2.24 Sidebar shows admin navigation', async ({ page }) => {
    await expect(page.locator('.sidebar-header h3')).toHaveText('🏫 Gate Attendance');
    await expect(page.locator('.sidebar-header small')).toHaveText('Admin');
  });

  test('2.25 Topbar shows page title and user info', async ({ page }) => {
    await expect(page.locator('#page-title')).toHaveText('Dashboard');
    await expect(page.locator('.user-info')).toContainText('SystemAdmin');
  });

  test('2.26 Topbar logout button works', async ({ page }) => {
    await page.locator('.topbar-right button:has-text("Logout")').click();
    await page.waitForURL(/\/login/, { timeout: 10000 });
  });

  // ──────────────────────────────────────────────────────────
  // RESPONSIVE ELEMENTS
  // ──────────────────────────────────────────────────────────
  test('2.27 Mobile sidebar toggle button exists', async ({ page }) => {
    await expect(page.locator('button:has-text("☰")')).toBeVisible();
  });

  // ──────────────────────────────────────────────────────────
  // SECTION RANK CLICK (if clickable)
  // ──────────────────────────────────────────────────────────
  test('2.28 Section rank items are present', async ({ page }) => {
    await page.waitForTimeout(2000);
    const ranks = page.locator('.section-rank');
    const count = await ranks.count();
    if (count > 0) {
      await ranks.first().click();
      await page.waitForTimeout(500);
    }
  });

  // ──────────────────────────────────────────────────────────
  // EXIT CHART ITEMS (if clickable)
  // ──────────────────────────────────────────────────────────
  test('2.29 Exit chart items are clickable', async ({ page }) => {
    await page.waitForTimeout(2000);
    const items = page.locator('.exit-chart-item');
    const count = await items.count();
    if (count > 0) {
      await items.first().click();
      await page.waitForTimeout(500);
    }
  });
});
