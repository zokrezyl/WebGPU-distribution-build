#!/usr/bin/env bash
set -e

git clone --depth=1 https://dawn.googlesource.com/dawn

cd dawn

cmake -S . -B out/Release -DDAWN_FETCH_DEPENDENCIES=ON -DDAWN_ENABLE_INSTALL=ON -DCMAKE_BUILD_TYPE=Release

cmake --build out/Release
