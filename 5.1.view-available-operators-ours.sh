#!/bin/bash

CUR_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
source "${CUR_DIR}/config.sh"

kubectl -n marketplace get opsrc "altinity-clickhouse-operator" -o=custom-columns=NAME:.metadata.name,PACKAGES:.status.packages

