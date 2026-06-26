const { test, expect } = require('@playwright/test');

const ACCOUNTS = {
  Admin:   { username: 'admin',   password: 'Admin@2026' },
  Teacher: { username: 'alice',   password: 'password123' },
  Staff:   { username: 'stafftester_1781872919', password: 'password123' },
  Viewer:  { username: 'viewertester', password: 'password123' },
  Parent:  { username: 'parenttester', password: 'password123' },
};

// Sidebar links for each role (using href values from app.js sidebar menu)
const SIDEBAR_HREFS = {
  Admin:   ['/pages/dashboard.html','/pages/users.html','/pages/registrations.html','/pages/students.html','/pages/parents.html','/pages/sections.html','/pages/subjects.html','/pages/attendance-records.html','/pages/reports.html','/pages/class-attendance.html','/pages/scan-logs.html','/pages/pull-outs.html','/pages/email-logs.html','/pages/excuses.html','/pages/audit-logs.html','/pages/settings.html','/pages/backups.html'],
  Teacher: ['/pages/dashboard.html','/pages/class-attendance.html','/pages/attendance-records.html','/pages/students.html','/pages/reports.html','/pages/pull-outs.html','/pages/excuses.html'],
  Staff:   ['/pages/dashboard.html','/pages/scanner.html','/pages/attendance-records.html'],
  Viewer:  ['/pages/dashboard.html','/pages/attendance-records.html'],
  Parent:  ['/pages/parent-portal.html','/pages/parent-attendance.html','/pages/parent-notifications.html','/pages/parent-excuse.html'],
};

async function loginAs(page, role) {
  const acct = ACCOUNTS[role];
  await page.goto('/login');
  await page.waitForSelector('#loginForm');
  await page.fill('#username', acct.username);
  await page.fill('#password', acct.password);
  await page.click('button[type="submit"]');
  await page.waitForSelector('.sidebar', { timeout: 10000 });
  await page.waitForTimeout(1000);
}

async function clickSidebarHref(page, href) {
  const link = page.locator(`.sidebar-menu a[href="${href}"]`);
  await link.scrollIntoViewIfNeeded();
  await link.click();
  await page.waitForTimeout(2000);
}

test.describe('ALL ROLES FULL DEMONSTRATION', () => {
  test.describe.configure({ mode: 'serial' });

  for (const [role, hrefs] of Object.entries(SIDEBAR_HREFS)) {
    test.describe(`${role} - ${hrefs.length} pages`, () => {
      test.use({ storageState: undefined });
      test(`${role} visits all pages via sidebar`, async ({ page }) => {
        await loginAs(page, role);
        await expect(page.locator('.sidebar')).toBeVisible();

        for (const href of hrefs) {
          await clickSidebarHref(page, href);
          await expect(page.locator('.sidebar')).toBeVisible();
          await expect(page.locator('#topbar')).toBeVisible();
        }
      });
    });
  }
});
