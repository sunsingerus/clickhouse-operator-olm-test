#!/bin/bash

CUR_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
source "${CUR_DIR}/config.sh"

echo "For more details look into:"
echo "https://github.com/operator-framework/community-operators/blob/master/docs/testing-operators.md"

if [[ -d "${BASE_DIR}/operator-marketplace" ]]; then
	echo "${BASE_DIR}/operator-marketplace already in place, abort"
	exit 1
fi
if [[ -d "${BASE_DIR}/operator-courier" ]]; then
	echo "${BASE_DIR}/operator-courier already in place, abort"
	exit 1
fi
if [[ -d "${BASE_DIR}/operator-lifecycle-mamanger" ]]; then
	echo "${BASE_DIR}/operator-lifecycle-manager already in place, abort"
	exit 1
fi

git clone https://github.com/operator-framework/operator-marketplace.git "${BASE_DIR}/operator-marketplace"
git clone https://github.com/operator-framework/operator-courier.git "${BASE_DIR}/operator-courier"
git clone https://github.com/operator-framework/operator-lifecycle-manager.git "${BASE_DIR}/operator-lifecycle-manager"

if $(which operator-courier); then
	echo "operator-courier found, continue"
else
	echo "operator-courier not found, can not continue"
	echo "install it as: pip3 install operator-courier"
	echo "abort"
	exit 1
fi

