import 'dart:async';

import 'package:grpc/grpc.dart';
import 'package:mocktail/mocktail.dart';

import 'generated/version/version.pbgrpc.dart';

class MockResponseFuture<T> extends Mock implements ResponseFuture<T> {
  final T value;

  MockResponseFuture(this.value);
  @override
  Future<S> then<S>(FutureOr<S> Function(T value) onValue,
          {Function? onError}) =>
      Future.value(value).then(onValue, onError: onError);
}

class FakeVersionServiceClient extends Fake implements VersionServiceClient {
  @override
  MockResponseFuture<VersionResponse> getVersion(VersionRequest request,
      {CallOptions? options}) {
    return MockResponseFuture(VersionResponse(major: 1, minor: 0, patch: 0));
  }
}

class VersionClient {
  final VersionServiceClient stub;

  VersionClient(this.stub);

  Future<VersionResponse> getVersion() {
    return stub.getVersion(
      VersionRequest(),
      options: CallOptions(compression: const GzipCodec()),
    );
  }
}
