#!/usr/bin/env bash
set -euo pipefail

semgrep --config=p/owasp-top-ten --error ..
