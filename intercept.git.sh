#!/bin/bash

set -euo pipefail

private_key_path="$HOME/.ansible-core-ci-private.key"

if [ ! -f "${private_key_path}" ]; then
  openssl ecparam -genkey -name secp384r1 -noout > "${private_key_path}"
  openssl ec -pubout < "${private_key_path}" 2> /dev/null | tr '\n' ' '
  echo
fi

exec /usr/bin/base.git "$@"
