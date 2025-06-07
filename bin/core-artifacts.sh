#!/usr/bin/env bash


set -e

source bin/os.sh



OUT_NAME="$1"
if [[ -z "$OUT_NAME" ]]; then
  echo "❌ Missing archive name argument. Usage: $0 <output-name>"
  exit 1
fi

mkdir -p artifacts/${OUT_NAME}/lib artifacts/${OUT_NAME}/bin
cp dawn/out/Release/src/dawn/native/libwebgpu_dawn.* artifacts/${OUT_NAME}/ib
cp dawn/out/Release/Animometer artifacts/${OUT_NAME}/bin
cp dawn/out/Release/ComputeBoids artifacts/${OUT_NAME}/bin
cp dawn/out/Release/HelloTriangle artifacts/${OUT_NAME}/bin
cp dawn/out/Release/DawnInfo artifacts/${OUT_NAME}/bin
cp dawn/out/Release/ManualSurfaceTest artifacts/${OUT_NAME}/bin
cp dawn/out/Release/tint artifacts/${OUT_NAME}/bin
cp dawn/out/Release/tint_info artifacts/${OUT_NAME}/bin
cp dawn/out/Release/tint_unittests artifacts/${OUT_NAME}/bin



tar -czf "artifacts/${OUT_NAME}.tar.gz" artifacts/${OUT_NAME}

echo "✅ Created artifacts/${OUT_NAME}.tar.gz"
