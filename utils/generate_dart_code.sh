#!/bin/bash

# Remember to download 'protoc-gen-dart' https://grpc.io/docs/quickstart/dart/ ("Install Protocol Buffers v3")
export PATH="$PATH:$HOME/.pub-cache/bin"

mkdir -p lib/generated

for filename in protos/*.proto; do
    protoc -Iprotos ./protos/${filename##*/} --dart_out=grpc:lib/generated
done