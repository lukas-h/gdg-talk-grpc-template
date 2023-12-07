import 'dart:io';

import 'package:grpc/grpc.dart';
import 'package:grpc_server/src/version/version_service.dart';

Future<void> main() async {
  int port = int.parse(Platform.environment['PORT'] ?? '50051');

  final server = Server.create(
    services: [
      VersionService(),
    ],
    interceptors: <Interceptor>[
      (call, method) async {
        print(method.name);
        return null;
      }
    ],
    codecRegistry: CodecRegistry(
      codecs: const [
        GzipCodec(),
        IdentityCodec(),
      ],
    ),
  );
  await server.serve(port: port);
  print('Server listening on port ${server.port}...');
}
