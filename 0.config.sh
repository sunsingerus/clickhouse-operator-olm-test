#!/bin/bash

CUR_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
BASE_DIR="$(realpath "${CUR_DIR}/..")"


# Dir where OLM operator package and all other files are located
OPERATOR_PACKAGE_DIR="${BASE_DIR}/community-operators/upstream-community-operators/clickhouse-operator/"

# Package name of operator OLM package
# It is expected to be the same as described in the package itself
PACKAGE_NAME="clickhouse-operator"

# Package version of operator OLM package
# It is expected to be the same as described in the package itself
PACKAGE_VERSION="0.4.4"

# Namespace a.k.a. username on htrtps://quay.io Free tariff plan works fine.
QUAY_NAMESPACE="sunsingerus"

# Token provided by quay.io
TOKEN="${QUAY_TOKEN}"

# OLM verson to install
OLM_VERSION="0.11.0"
