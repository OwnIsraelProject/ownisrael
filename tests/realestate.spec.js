// @ts-check
const { test, expect } = require('@playwright/test');
const { faker } = require('@faker-js/faker');

test('owns a piece of the holy land', async ({ page }) => {
  test.setTimeout(3000000);

  const seed = Math.floor(Math.random() * 3);
  const emailName = fullName.split(' ').join(['.', '_', '-'][seed]).toLowerCase();
  const emailDomain = ['gmail.com', 'yahoo.com', 'hotmail.com'][seed];
  const email = `${emailName}@${emailDomain}`;
  const phone = faker.phone.number('###-###-####');

  const selection = ['New Jersey', 'New York', 'Flatbush'][seed];

  console.log('Using name:', fullName);
  console.log('Using email:', email);
  console.log('Using phone:', phone);
  console.log('Selecting location:', selection);
  console.log('Message:', message);

  await page.goto('https://realestateisrael.org/');

  await page.locator('form[action="/#wpcf7-f100-p320-o1"] [name="full-name"]').fill('FREE PALESTINE');
  await page.locator('form[action="/#wpcf7-f100-p320-o1"] [name="email"]').fill(email);
  await page.locator('form[action="/#wpcf7-f100-p320-o1"] [name="phone"]').fill(phone);
  await page.locator(`form[action="/#wpcf7-f100-p320-o1"] input[value="${selection}"]`).click({force: true});
  await page.locator('form[action="/#wpcf7-f100-p320-o1"] [name="message"]').fill('FREE PALESTINE');
  await page.locator('form[action="/#wpcf7-f100-p320-o1"] [type="submit"]').click({force: true});

  await page.screenshot({ path: 'img/submit.png', fullPage: true });
  await expect(page.getByText('Thank you for registering')).toBeVisible({ timeout: 3000000 });
  await page.screenshot({ path: 'img/confirm.png', fullPage: true });
});
