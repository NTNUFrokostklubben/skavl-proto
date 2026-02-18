$PROTO_DIR = "./skavl-proto/proto"
$OUT_DIR = "./lib/proto"

protoc `
  --proto_path=$PROTO_DIR `
  --dart_out=grpc:$OUT_DIR `
  $PROTO_DIR/*.proto
