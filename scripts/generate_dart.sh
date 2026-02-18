#!/usr/bin/env bash
set -e

PROTO_DIR="./skavl-proto/proto"
OUT_DIR="./lib"

protoc \
  --proto_path="$PROTO_DIR" \
  --dart_out="$OUT_DIR" \
  "$PROTO_DIR"/*.proto
