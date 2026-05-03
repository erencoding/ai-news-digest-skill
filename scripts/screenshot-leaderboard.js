#!/usr/bin/env node
// Artificial Analysis 排行榜截图

const { chromium } = require('/usr/lib/node_modules/playwright');

(async () => {
  const browser = await chromium.launch({ headless: true });
  const page = await browser.newPage();
  await page.setViewportSize({ width: 1400, height: 900 });
  
  await page.goto('https://artificialanalysis.ai/', { 
    waitUntil: 'load', 
    timeout: 30000 
  });
  
  await page.waitForTimeout(3000);
  await page.screenshot({ path: '/tmp/ai-leaderboard.png', fullPage: false });
  await browser.close();
  
  console.log('Screenshot saved to /tmp/ai-leaderboard.png');
})().catch(e => {
  console.error('Error:', e.message);
  process.exit(1);
});