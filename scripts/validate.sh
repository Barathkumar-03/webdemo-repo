#!/usr/bin/env bash
set -euo pipefail

if command -v curl >/dev/null 2>&1; then
  curl -sSf http://127.0.0.1/ > /dev/null
else
  # fallback: use Python stdlib (avoids installing anything)
  python3 - <<'PY'
import sys, urllib.request
try:
    urllib.request.urlopen("http://127.0.0.1/", timeout=5).read()
except Exception as e:
    print(e, file=sys.stderr)
    sys.exit(1)
PY
fi
