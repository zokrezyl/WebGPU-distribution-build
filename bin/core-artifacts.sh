#!/usr/bin/env bash


set -e

source bin/os.sh

mkdir -p artifacts/lib artifacts/bin

cp dawn/out/Release/src/dawn/native/libwebgpu_dawn.* artifacts/lib

cp dawn/out/Release/Animometer artifacts/bin
cp dawn/out/Release/ComputeBoids artifacts/bin
cp dawn/out/Release/HelloTriangle artifacts/bin
cp dawn/out/Release/DawnInfo artifacts/bin
cp dawn/out/Release/ManualSurfaceTest artifacts/bin
cp dawn/out/Release/tint artifacts/bin
cp dawn/out/Release/tint_info artifacts/bin
cp dawn/out/Release/tint_unittests artifacts/bin

cp dawn/out/Release/src/dawn/native/libwebgpu_dawn.* artifacts/lib

