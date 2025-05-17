#!/usr/bin/env bash


set -e

source bin/os.sh

cd dawn/out/Release

export CC=clang
export CXX=clang++

ctest --output-on-failure
