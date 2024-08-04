import 'package:flutter/material.dart';

import 'features/home/home_view_controller.dart';
import 'support/service_locator/service_locator.dart';

void main() {
  initializeDependencies();

  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeViewController(),
    ),
  );
}
