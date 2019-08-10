#!/bin/bash

CUR_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
source "${CUR_DIR}/0.config.sh"

kubectl apply -f "${CUR_DIR}/7.clickhouse-operator-subscription-all-ns.yaml"
