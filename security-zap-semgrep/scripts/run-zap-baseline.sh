#!/usr/bin/env bash
set -euo pipefail

TARGET_URL="${1:-}"
if [ -z "$TARGET_URL" ]; then
  echo "Usage: $0 <target_url>"
  exit 1
fi

docker run --rm -t owasp/zap2docker-stable zap-baseline.py -t "$TARGET_URL" -r zap-report.html
