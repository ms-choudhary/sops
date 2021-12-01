#! /bin/sh

# The defined command will be invoked with the following scheme: command certFile keyFile caFile full-URL
full_url=${4}

if ! sops -d "$(basename $full_url)"; then
  >&2 echo "failed to decrypt secrets"
  exit 1
fi
