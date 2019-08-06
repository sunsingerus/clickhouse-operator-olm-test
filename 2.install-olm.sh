#!/bin/bash

CUR_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
source "${CUR_DIR}/0.config.sh"

${BASE_DIR}/operator-lifecycle-manager/deploy/upstream/quickstart/install.sh "0.11.0"

