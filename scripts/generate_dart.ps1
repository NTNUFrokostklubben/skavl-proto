$PROTO_DIR = "./skavl-proto/proto"
$OUT_DIR = "./lib/skavl-proto"

protoc `
  --proto_path=$PROTO_DIR `
  --dart_out=$OUT_DIR `
  $PROTO_DIR/*.proto
