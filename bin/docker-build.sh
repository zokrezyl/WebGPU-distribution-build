#!/usr/bin/env bash

set -e

docker build bin -t ubuntu-build-image

docker run -it \
  -w /build \
  -e DOCKER_BUILD=true \
  -v$PWD/bin:/build/bin \
  ubuntu-build-image \
  ./bin/build.sh
