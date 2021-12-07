#! /bin/sh

# The defined command will be invoked with the following scheme: command certFile keyFile caFile full-URL
full_url=${4}

if ! ${SOPS_BIN_PATH} -d "$(basename $full_url)"; then
  >&2 echo "failed to decrypt secrets"
  exit 1
fi
