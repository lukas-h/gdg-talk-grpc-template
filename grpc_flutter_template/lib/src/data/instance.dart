import 'package:grpc/grpc.dart';
import 'package:grpc_flutter_template/src/data/generated/version/version.pbgrpc.dart';
import 'package:grpc_flutter_template/src/data/persistence/persistence.dart';
import 'package:grpc_flutter_template/src/data/version.dart';
import 'package:mocktail/mocktail.dart';

class InstanceSessionRepository {
  final ClientChannel channel;
  final PersistenceService persistenceService;
  String? userToken;
  int? userId;

  InstanceSessionRepository({
    required this.channel,
    required this.persistenceService,
  });

// TODO throw error if userToken == null
  CallOptions get callOptions =>
      CallOptions(metadata: {'Authorization': 'Bearer $userToken'});
}

class Instance {
  final InstanceSessionRepository _session;
  Instance({
    String host = 'localhost',
    int port = 9876,
    PersistenceService? persistenceService,
  }) : _session = InstanceSessionRepository(
          persistenceService: persistenceService ?? NoPersistenceService(),
          channel: ClientChannel(
            host,
            port: port,
            options: ChannelOptions(
              credentials: const ChannelCredentials.insecure(),
              codecRegistry: CodecRegistry(
                codecs: const [
                  GzipCodec(),
                  IdentityCodec(),
                ],
              ),
            ),
          ),
        );

  Future<void> init() async {
    _session.userToken = await _session.persistenceService.getToken();
  }

  Future<void> shutdown() => _session.channel.shutdown();

  VersionClient get version => VersionClient(
        VersionServiceClient(_session.channel),
      );
}

class FakeInstance extends Fake implements Instance {
  @override
  VersionClient get version => VersionClient(FakeVersionServiceClient());

  @override
  Future<void> init() async {}

  @override
  Future<void> shutdown() async {}
}
