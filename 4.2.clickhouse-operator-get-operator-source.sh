#!/bin/bash

CUR_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
source "${CUR_DIR}/config.sh"

#
# OperatorSource section
#
echo "-----------------------------------"
echo "Get all operator sources available:"
kubectl -n marketplace get operatorsource

echo "Get operator source:"
kubectl -n marketplace get operatorsource "altinity-clickhouse-operator"

#
# CatalogSource section
#
echo "----------------------------------"
echo "Get all catalog sources available:"
kubectl -n marketplace get catalogsource

echo "Get catalog source:"
kubectl -n marketplace get catalogsource "altinity-clickhouse-operator"

#
# CatalogSourceConfig section
#
echo "-----------------------------------------"
echo "Get all catalog source configs available:"
kubectl -n marketplace get catalogsourceconfig
