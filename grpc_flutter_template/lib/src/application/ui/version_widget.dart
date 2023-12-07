import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grpc_flutter_template/src/application/cubit/version_cubit.dart';
import 'package:grpc_flutter_template/src/domain/version_repository.dart';

class VersionWidget extends StatelessWidget {
  const VersionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => VersionCubit(context.read<VersionRepository>()),
      child: Container(
        height: 250,
        width: 250,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.deepPurple,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: BlocBuilder<VersionCubit, VersionState>(
          builder: (context, state) {
            if (state is VersionInitial) {
              return Center(
                child: ElevatedButton(
                  onPressed: () {
                    context.read<VersionCubit>().getVersion();
                  },
                  child: const Text('Get Version'),
                ),
              );
            } else if (state is VersionSuccess) {
              return Center(
                child: Text(state.version.toString()),
              );
            } else if (state is VersionError) {
              return Center(
                child: Text(state.error),
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}
