// ignore_for_file: implementation_imports

import 'package:grpc/src/server/call.dart';
import 'package:grpc_server/src/generated/version/version.pbgrpc.dart';

class HelloWorldService extends HelloWorldServiceBase {
  @override
  Future<HelloWorldResponse> getHelloWorld(
    ServiceCall call,
    HelloWorldRequest request,
  ) async {
    return HelloWorldResponse(message: 'Hello World');
  }
}
