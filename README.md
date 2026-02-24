# SKAVL Protobuf repo

This repo will contain the .proto files used in other applications.
Each application will be responsible for building the compiled class based on the proto files and this repo should be included as a submodule.

The generation scripts found under `scripts` should only be ran from the actual repo thats relevant for that script. Scripts should be ran from the root of the repo in question.

# Technical

## Dart

Required tools:
- [protoc: 33.4](https://github.com/protocolbuffers/protobuf/releases/tag/v33.4)
- [protoc_plugin: ^25.0.0](https://pub.dev/packages/protoc_plugin)

For installation on windows its important to add both protoc and the global dart executable binary folder to `PATH`

Once both protoc and the protoc plugin is installed, run the `generate_dart.sh` or `generate_dart.ps1` script depending on your system

## Python

Required tools:
- grpcio-tools

Install grpcio-tools in your conda enviroment
```
python -m pip install grpcio-tools
```

As long as this package is installed in the conda enviroment and the conda enviroment is active in the terminal, running `generate_python.sh` or `generate_python.ps1` from the root of the python repo should generate all required classes along with a `__init__.py` which allows for package imports.

