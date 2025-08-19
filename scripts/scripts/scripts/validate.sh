#!/usr/bin/env bash
set -euo pipefail
# Return non-zero if homepage is not served -> makes CodeDeploy mark instance unhealthy
curl -sSf http://127.0.0.1/ > /dev/null
