import 'package:grpc_flutter_template/src/data/generated/version/version.pbgrpc.dart';
import 'package:grpc_flutter_template/src/data/version.dart';
import 'package:test/test.dart';

void main() {
  test('VersionClientService', () {
    final client = FakeVersionServiceClient();
    final response = client.getVersion(VersionRequest());
    expect(response, completion(VersionResponse(major: 1, minor: 0, patch: 0)));
  });
}
