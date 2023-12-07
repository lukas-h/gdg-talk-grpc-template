import 'package:grpc_client/grpc_client.dart';

Future<void> main() async {
  final instance = Instance();
  await instance.init();

  final resp = await instance.version.getVersion();
  print(resp);

  await instance.shutdown();
}
