#!/usr/bin/env bash
set -e

PROTO_DIR="./skavl-proto/proto"
OUT_DIR="./src/skavl_proto"

mkdir -p "$OUT_DIR"
touch "$OUT_DIR/__init__.py"

python -m grpc_tools.protoc \
  --proto_path="$PROTO_DIR" \
  --python_out="$OUT_DIR" \
  --pyi_out="$OUT_DIR" \
  --grpc_python_out="$OUT_DIR" \
  "$PROTO_DIR"/*.proto
