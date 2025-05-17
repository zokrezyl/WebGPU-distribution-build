#!/usr/bin/env bash


set -e

echo "building inside $PWD"

if [ -z ${DOCKER_BUILD+x} ]; then 
  echo "building "
else 
  bin/ubuntu-packages.sh
  echo "building inside docker"
fi 


./bin/core-build.sh

