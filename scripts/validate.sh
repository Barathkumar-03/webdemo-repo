#!/usr/bin/env bash
set -euo pipefail
set -x

if command -v curl >/dev/null 2>&1; then
  curl -sSf http://127.0.0.1/ > /dev/null
else
  python3 - <<'PY'
import urllib.request; urllib.request.urlopen("http://127.0.0.1/", timeout=5).read()
PY
fi
