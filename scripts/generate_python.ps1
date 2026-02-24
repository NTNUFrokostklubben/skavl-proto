$PROTO_DIR = "./skavl-proto/proto"
$OUT_DIR = "./src/skavl_proto"

New-Item -ItemType Directory -Force -Path $OUT_DIR | Out-Null

$INIT_FILE = Join-Path $OUT_DIR "__init__.py"
if (-not (Test-Path $INIT_FILE)) {
  New-Item -ItemType File -Path $INIT_FILE | Out-Null
}

python -m grpc_tools.protoc `
  --proto_path=$PROTO_DIR `
  --python_out=$OUT_DIR `
  --pyi_out=$OUT_DIR `
  --grpc_python_out=$OUT_DIR `
  $PROTO_DIR/*.proto
