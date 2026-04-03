import http from 'k6/http';
import { check, sleep } from 'k6';

export const options = {
  stages: [
    { duration: '30s', target: 10 },
    { duration: '1m', target: 25 },
    { duration: '30s', target: 0 }
  ]
};

const BASE_URL = __ENV.BASE_URL || 'http://127.0.0.1:3000';

export default function () {
  const res = http.get(`${BASE_URL}/health`);
  check(res, {
    'status is 200': (r) => r.status === 200,
    'p95 < 500ms': (r) => r.timings.duration < 500
  });
  sleep(1);
}
