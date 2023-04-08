import 'package:flutter/material.dart';

import 'application/application.dart';
import 'presentation/presentation.dart';

class RouterSampleApp extends StatelessWidget {
  const RouterSampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: RouterConfiguration.router,
      // routeInformationProvider:
      //     RouterConfiguration.router.routeInformationProvider,
      // routeInformationParser: RouterConfiguration.router.routeInformationParser,
      // routerDelegate: RouterConfiguration.router.routerDelegate,
    );
  }
}
