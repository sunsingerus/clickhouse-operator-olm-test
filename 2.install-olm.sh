#!/bin/bash

CUR_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
source "${CUR_DIR}/config.sh"

${BASE_DIR}/operator-lifecycle-manager/deploy/upstream/quickstart/install.sh "${OLM_VERSION}"

