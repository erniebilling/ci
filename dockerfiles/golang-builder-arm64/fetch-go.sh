#!/usr/bin/env bash

set -u

GO_VERSION=1.14.4
GOLANG_FILE=go${GO_VERSION}.linux-arm64.tar.gz

if [ ! -f "golang-linux/${GOLANG_FILE}" ]; then
  mkdir -p golang-linux
  wget https://dl.google.com/go/${GOLANG_FILE} -O golang-linux/${GOLANG_FILE}
fi
