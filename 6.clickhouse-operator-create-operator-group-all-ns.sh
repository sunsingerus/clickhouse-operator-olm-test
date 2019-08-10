#!/bin/bash

CUR_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
source "${CUR_DIR}/0.config.sh"

kubectl apply -f "${CUR_DIR}/6.clickhouse-operator-group-all-ns.yaml"

