#!/bin/bash

#
# Push clickhouse-operator to quay.io
#
# As a result, we should see application listed in quay.io account on 'Applications' tab. 
# IMPORTANT
# If the application listed on 'Applications' tab has a lock icon, edit 'Settings' and make the application public.

CUR_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
source "${CUR_DIR}/config.sh"

operator-courier push \
	"${OPERATOR_PACKAGE_DIR}" \
	"${QUAY_NAMESPACE}" \
	"${PACKAGE_NAME}" \
	"${PACKAGE_VERSION}" \
	"${TOKEN}"

