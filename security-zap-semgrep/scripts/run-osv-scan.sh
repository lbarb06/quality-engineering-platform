#!/usr/bin/env bash
set -euo pipefail

if ! command -v osv-scanner >/dev/null 2>&1; then
  echo "Install osv-scanner first: https://github.com/google/osv-scanner"
  exit 1
fi

osv-scanner scan -r ..
