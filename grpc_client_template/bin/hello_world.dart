import 'package:grpc/grpc.dart';
import 'package:grpc_client/src/generated/version/version.pbgrpc.dart';

Future<void> main() async {
  final channel = ClientChannel(
    '127.0.0.1',
    port: 9876,
    options: ChannelOptions(
      credentials: ChannelCredentials.insecure(),
      codecRegistry:
          CodecRegistry(codecs: const [GzipCodec(), IdentityCodec()]),
    ),
  );

  final service = HelloWorldServiceClient(
    channel,
    options: CallOptions(compression: const GzipCodec()),
  );

  final response = await service.getHelloWorld(HelloWorldRequest());

  print(response.message);
}
