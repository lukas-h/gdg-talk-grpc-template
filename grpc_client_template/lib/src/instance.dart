import 'package:grpc/grpc.dart';
import 'package:grpc_client/src/persistence/persistence.dart';
import 'package:grpc_client/src/version.dart';

class InstanceInternalRepository {
  final ClientChannel channel;
  final PersistenceService persistenceService;
  String? userToken;
  int? userId;

  InstanceInternalRepository({
    required this.channel,
    required this.persistenceService,
  });

// TODO throw error if userToken == null
  CallOptions get callOptions =>
      CallOptions(metadata: {'Authorization': 'Bearer $userToken'});
}

class Instance {
  final InstanceInternalRepository _session;
  Instance({
    String host = 'localhost',
    int port = 50051,
    PersistenceService? persistenceService,
  }) : _session = InstanceInternalRepository(
            persistenceService: persistenceService ?? NoPersistenceService(),
            channel: ClientChannel(
              host,
              port: port,
              options: ChannelOptions(
                credentials: ChannelCredentials.insecure(),
                codecRegistry:
                    CodecRegistry(codecs: const [GzipCodec(), IdentityCodec()]),
              ),
            ));

  Future<void> init() async {
    _session.userToken = await _session.persistenceService.getToken();
  }

  Future<void> shutdown() => _session.channel.shutdown();

  VersionClient get version => VersionClient(_session);
}
