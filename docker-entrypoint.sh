#!/bin/sh
set -e

echo "=== Surfing Builder ==="

cp -a /src/. /build/

cd /build

sh build.sh

mkdir -p /dist
cp Surfing_*.zip /dist/

echo "=== Build Complete ==="
echo "Artifacts:"
ls -lh /dist/
