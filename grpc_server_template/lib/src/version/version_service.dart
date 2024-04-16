import 'package:grpc/grpc.dart';
import 'package:grpc_server/src/generated/version/version.pbgrpc.dart';
import 'package:grpc_server/src/version/version.g.dart';

class VersionService extends VersionServiceBase {
  @override
  Future<VersionResponse> getVersion(ServiceCall call, VersionRequest request) {
    final parts = packageVersion.split('.');

    return Future.value(
      VersionResponse(
        label: packageVersion,
        major: int.tryParse(parts[0]),
        minor: int.parse(parts[1]),
        patch: int.parse(parts[2]),
      ),
    );
  }
}
