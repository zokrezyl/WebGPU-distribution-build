#!/usr/bin/env bash


set -e

ls bin
ls bin/os.sh
source bin/os.sh

echo "building inside $PWD"

if [ $(uname -s) = "Linux" ]; then
  echo "Linux detected"
  if [ -z ${DOCKER_BUILD+x} ]; then 
    sudo bin/ubuntu-packages.sh
    echo "building "
  else 
    echo "building inside docker"
  fi 

else
  if [ $(uname -s) = "Darwin" ]; then
    echo "MacOS detected"
  else
    echo "Unknown OS detected"
  fi
fi


./bin/core-checkout.sh
./bin/core-build.sh
./bin/core-test.sh

