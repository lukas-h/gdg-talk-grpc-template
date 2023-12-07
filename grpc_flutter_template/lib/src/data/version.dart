import 'package:grpc/grpc.dart';
import 'package:grpc_flutter_template/src/data/instance.dart';

import 'generated/version/version.pbgrpc.dart';

class VersionClient {
  final VersionServiceClient stub;

  VersionClient(InstanceInternalRepository session)
      : stub = VersionServiceClient(session.channel);

  Future<VersionResponse> getVersion() {
    return stub.getVersion(
      VersionRequest(),
      options: CallOptions(compression: const GzipCodec()),
    );
  }
}
