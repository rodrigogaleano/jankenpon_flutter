import 'package:flutter/material.dart';

import 'router/app_router.dart';
import 'support/service_locator/service_locator.dart';

void main() {
  initializeDependencies();

  runApp(
    MaterialApp.router(
      title: 'JanKenPon',
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
    ),
  );
}
