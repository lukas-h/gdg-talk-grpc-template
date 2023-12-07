///
//  Generated code. Do not modify.
//  source: version/version.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'version.pb.dart' as $0;
export 'version.pb.dart';

class VersionServiceClient extends $grpc.Client {
  static final _$getVersion =
      $grpc.ClientMethod<$0.VersionRequest, $0.VersionResponse>(
          '/template.version.VersionService/GetVersion',
          ($0.VersionRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.VersionResponse.fromBuffer(value));

  VersionServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.VersionResponse> getVersion($0.VersionRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getVersion, request, options: options);
  }
}

abstract class VersionServiceBase extends $grpc.Service {
  $core.String get $name => 'template.version.VersionService';

  VersionServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.VersionRequest, $0.VersionResponse>(
        'GetVersion',
        getVersion_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.VersionRequest.fromBuffer(value),
        ($0.VersionResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.VersionResponse> getVersion_Pre(
      $grpc.ServiceCall call, $async.Future<$0.VersionRequest> request) async {
    return getVersion(call, await request);
  }

  $async.Future<$0.VersionResponse> getVersion(
      $grpc.ServiceCall call, $0.VersionRequest request);
}
