# quality-engineering-platform

System-layer QA repository targeting the `platform-portfolio` environment.

## Structure

- `frontend/`
  - `ui-e2e/`
  - `accessibility/`
  - `visual-regression/`
- `backend/`
  - `integration/`
  - `db/`
  - `queues/`
- `api/`
  - `contract/`
  - `functional/`
  - `postman/`
- `performance/`
  - `load/`
  - `stress/`
  - `soak/`
- `security/`
  - `sast/`
  - `dast/`
  - `deps/`
- `test-data/`
  - `fixtures/`
  - `mocks/`
  - `synthetic/`
- `tooling/`
  - `scripts/`
  - `generators/`
- `ci/`
  - `github-actions/`
  - `jenkins/`
- `docs/`
  - `strategy/`
  - `standards/`
  - `test-plans/`
  - `reports/`

## Primary Target Environment

- EKS: `project1-k8s-main-cluster`
- Argo app: `webapp`
- API endpoints:
  - `GET /health`
  - `GET /api/messages`
  - `POST /api/messages`

## Quick Validation

```bash
LB=<webapp-elb-hostname>
curl -i "http://$LB/health"
curl -i "http://$LB/api/messages"
curl -i -X POST "http://$LB/api/messages" -H "Content-Type: application/json" -d '{"content":"qe smoke"}'
