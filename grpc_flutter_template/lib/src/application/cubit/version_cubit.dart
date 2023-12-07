import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grpc_flutter_template/src/data/generated/version/version.pb.dart';
import 'package:grpc_flutter_template/src/domain/version_repository.dart';

abstract class VersionState extends Equatable {}

class VersionInitial extends VersionState {
  @override
  List<Object?> get props => [];
}

class VersionLoading extends VersionState {
  @override
  List<Object?> get props => [];
}

class VersionSuccess extends VersionState {
  final VersionResponse version;
  VersionSuccess(this.version);
  @override
  List<Object?> get props => [version];
}

class VersionError extends VersionState {
  final String error;
  VersionError(this.error);
  @override
  List<Object?> get props => [error];
}

class VersionCubit extends Cubit<VersionState> {
  final VersionRepository _versionRepository;
  VersionCubit(this._versionRepository) : super(VersionInitial()) {
    _init();
  }

  Future<void> _init() async {
    await _versionRepository.stream.listen((event) {
      emit(VersionSuccess(event));
    }, onError: (e) {
      emit(VersionError('Error $e'));
    });
  }

  Future<void> getVersion() async {
    emit(VersionLoading());
    await _versionRepository.getVersion();
  }
}
