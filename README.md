# OwnIsrael

> Own a piece of the holy land!

Test the RealEstateIsrael.org website

## How to test

```
npm install
bin/test.sh
```

To test continually, on a loop (e.g. to ensure uptime):

```
bin/test.sh --loop
```

### Notes on testing

- The script tests the website in three different headless browsers, in parallel. You will see output for all three.
- If the test was successful, you will see something like `3 passed (1.8m)` at the end of each run.
- The website itself is pretty slow. It takes a couple minutes for each pass.
- If you see a deprecation notice about `faker.phone.number(format)`, this is normal.

## System requirements

1. npm
2. The [Playwright system requirements](https://playwright.dev/docs/intro#system-requirements). Playwright can detect if there are additional binaries it needs to install and should prompt you to do so.

## How it works

`ownisrael` works by running a headless browser and filling out the form on the homepage of RealEstateIsrael.org with randomly generated names, and helpfully makes sure the website is still accepting registrations!

## What is Real Estate Israel?

Real Estate Israel is a real estate auction selling illegally settled parcels in the West Bank, in [violation of international law](https://www.democracynow.org/2024/3/1/headlines/new_jersey_community_members_warn_against_synagogues_plan_to_host_israeli_real_estate_event).
