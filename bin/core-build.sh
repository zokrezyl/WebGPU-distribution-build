#!/usr/bin/env bash


set -e

source bin/os.sh

cd dawn

export CC=clang
export CXX=clang++


echo "first step"
cmake -S . -B out/Release -DDAWN_FETCH_DEPENDENCIES=ON -DDAWN_ENABLE_INSTALL=ON -DCMAKE_BUILD_TYPE=Release -DDAWN_ENABLE_TESTS=ON -DDAWN_BUILD_SAMPLES=ON


echo "second step"
cmake --build out/Release -- -j12
