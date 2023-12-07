#!/usr/bin/env bash

GRPC_SCHEMES=../grpc_schemes_template

PROTOC="protoc --dart_out=grpc:lib/src/generated -I$GRPC_SCHEMES"

$PROTOC $GRPC_SCHEMES/version/version.proto

dart format lib/src/generated