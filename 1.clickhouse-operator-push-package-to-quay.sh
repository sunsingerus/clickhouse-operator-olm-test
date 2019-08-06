#!/bin/bash

#
# Push clickhouse-operator to quay.io
#
# As a result, we should see application listed in quay.io account on 'Applications' tab. 
# IMPORTANT
# If the application listed on 'Applications' tab has a lock icon, edit 'Settings' and make the application public.

BASE_DIR=/home/user/gocode/src/github.com/altinity/

OPERATOR_DIR="${BASE_DIR}/community-operators/upstream-community-operators/clickhouse-operator/"
QUAY_NAMESPACE="sunsingerus"
PACKAGE_NAME="clickhouse-operator"
PACKAGE_VERSION="0.4.4"
TOKEN="${QUAY_TOKEN}"

operator-courier push "$OPERATOR_DIR" "$QUAY_NAMESPACE" "$PACKAGE_NAME" "$PACKAGE_VERSION" "$TOKEN"

