import 'dart:async';

import 'package:grpc_flutter_template/src/data/generated/version/version.pb.dart';
import 'package:grpc_flutter_template/src/data/version.dart';

class VersionRepository {
  final VersionClient _versionClient;

  VersionRepository(this._versionClient) {
    init();
  }

  Future<void> init() async {}

  Future<void> getVersion() async {
    final resp = await _versionClient.getVersion();
    _controller.add(resp);
  }

  final _controller = StreamController<VersionResponse>.broadcast();

  get stream => _controller.stream;
}
