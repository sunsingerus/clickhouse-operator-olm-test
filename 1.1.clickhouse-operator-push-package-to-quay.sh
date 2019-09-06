#!/bin/bash

#
# Push clickhouse-operator to quay.io
#
# As a result, we should see application listed in quay.io account on 'Applications' tab. 
# IMPORTANT
# If the application listed on 'Applications' tab has a lock icon, edit 'Settings' and make the application public.

CUR_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
source "${CUR_DIR}/config.sh"

echo "*** IMPORTANT ***"
echo "In case application with the same name already exists in quay.io - upload will fail."
echo "In order to check - navigate to https://quay.io/application/ and ensure that there is no application with the same name - 'clickhouse'."
echo "In case application exists - click on application name -> settings -> Delete Application"
read -p "Press enter to continue ... "

echo -n "Uploading..."
operator-courier push \
	"${OPERATOR_PACKAGE_DIR}" \
	"${QUAY_NAMESPACE}" \
	"${PACKAGE_NAME}" \
	"${PACKAGE_VERSION}" \
	"${TOKEN}"
echo "done"

echo "*** IMPORTANT ***"
echo "Now we need to make application publish in quay.io - otherwise download will fail."
echo "In order to check - navigate to https://quay.io/application/ Click on application name -> settings -> make public."
read -p "Press enter to continue ... "

echo "We are done."
