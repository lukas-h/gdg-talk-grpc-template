import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grpc_flutter_template/src/application/ui/version_widget.dart';
import 'package:grpc_flutter_template/src/data/instance.dart';
import 'package:grpc_flutter_template/src/domain/version_repository.dart';

Future<void> main() async {
  final instance = Instance();
  await instance.init();
  runApp(
    DemoGRPCApp(
      instance: instance,
    ),
  );
}

class DemoGRPCApp extends StatelessWidget {
  final Instance instance;
  const DemoGRPCApp({super.key, required this.instance});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => VersionRepository(instance.version),
      child: MaterialApp(
        title: 'gRPC Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const Scaffold(body: Center(child: VersionWidget())),
      ),
    );
  }
}
