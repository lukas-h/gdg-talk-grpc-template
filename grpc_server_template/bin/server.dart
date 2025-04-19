import 'package:grpc/grpc.dart';
import 'package:grpc_server/src/hello_world/hello_world_service.dart';
import 'package:grpc_server/src/version/version_service.dart';

Future<void> main() async {
  final port = 9876;

  final server = Server.create(
    services: [
      VersionService(),
      HelloWorldService(),
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
