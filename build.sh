#!/usr/bin/env bash


set -e

sudo apt-get update
sudo apt-get install -y libx11-dev libxrandr-dev libxinerama-dev libxcursor-dev libxi-dev

git clone --depth=1 https://dawn.googlesource.com/dawn

cd dawn

cmake -S . -B out/Release -DDAWN_FETCH_DEPENDENCIES=ON -DDAWN_ENABLE_INSTALL=ON -DCMAKE_BUILD_TYPE=Release

cmake --build out/Release
