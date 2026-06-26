const { defineConfig } = require('@playwright/test');

module.exports = defineConfig({
  testDir: './tests',
  timeout: 600000,
  workers: 1,
  use: {
    baseURL: 'http://localhost:8000',
    screenshot: 'only-on-failure',
    trace: 'retain-on-failure',
    channel: 'chrome',
    launchOptions: {
      slowMo: process.env.HEADED ? 1500 : 0,
    },
  },
});
