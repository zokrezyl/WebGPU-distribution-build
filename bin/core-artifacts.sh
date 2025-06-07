#!/usr/bin/env bash


set -e

source bin/os.sh



OUT_NAME="$1"
if [[ -z "$OUT_NAME" ]]; then
  echo "❌ Missing archive name argument. Usage: $0 <output-name>"
  exit 1
fi

mkdir -p staging/${OUT_NAME}/lib staging/${OUT_NAME}/bin
cp dawn/out/Release/src/dawn/native/libwebgpu_dawn.* staging/${OUT_NAME}/ib
cp dawn/out/Release/Animometer staging/${OUT_NAME}/bin
cp dawn/out/Release/ComputeBoids staging/${OUT_NAME}/bin
cp dawn/out/Release/HelloTriangle staging/${OUT_NAME}/bin
cp dawn/out/Release/DawnInfo staging/${OUT_NAME}/bin
cp dawn/out/Release/ManualSurfaceTest staging/${OUT_NAME}/bin
cp dawn/out/Release/tint staging/${OUT_NAME}/bin
cp dawn/out/Release/tint_info staging/${OUT_NAME}/bin
cp dawn/out/Release/tint_unittests staging/${OUT_NAME}/bin


mkdir artifacts

tar -czf "artifacts/${OUT_NAME}.tar.gz" staging/${OUT_NAME}

echo "✅ Created staging/${OUT_NAME}.tar.gz"
