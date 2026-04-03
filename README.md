# QA Engineering Portfolio

Standalone QA frameworks for UI, API, performance/load, and security testing.

## Structure

- `ui-playwright/`: browser UI tests
- `api-postman-newman/`: API collections + Newman execution
- `performance-k6/`: k6 smoke/load scenarios
- `security-zap-semgrep/`: DAST/SAST/dependency scan scaffolding
- `docs/`: QA strategy, reporting, standards

## Quick Start

1. UI tests (Playwright):

```bash
cd ui-playwright
npm install
npx playwright install --with-deps chromium
npm test
```

2. API tests (Newman):

```bash
cd api-postman-newman
npm install
npm test
```

3. Performance tests (k6):

```bash
cd performance-k6
k6 run scripts/smoke.js
k6 run scripts/load.js
```

4. Security checks:

```bash
cd security-zap-semgrep
./scripts/run-semgrep.sh
./scripts/run-zap-baseline.sh https://example.com
./scripts/run-osv-scan.sh
```
