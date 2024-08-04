import 'package:get_it/get_it.dart';

import '../../features/game/di/game_module.dart';
import '../../features/home/di/home_module.dart';
import 'app_module.dart';

class ServiceLocator {
  ServiceLocator._();

  static final _provider = GetIt.instance;

  static T get<T extends Object>({dynamic param}) {
    return _provider.get<T>(param1: param);
  }

  static void registerSingleton<T extends Object>(T instance) {
    if (_provider.isRegistered<T>()) return;

    _provider.registerSingleton<T>(instance);
  }

  static void registerLazySingleton<T extends Object>(T Function() constructor) {
    if (_provider.isRegistered<T>()) return;

    _provider.registerLazySingleton<T>(constructor);
  }

  static void registerFactory<T extends Object>(T Function() constructor) {
    if (_provider.isRegistered<T>()) return;
    _provider.registerFactory<T>(constructor);
  }

  static void registerFactoryParam<T extends Object, P1>(T Function(P1) constructor) {
    if (_provider.isRegistered<T>()) return;

    _provider.registerFactoryParam<T, P1, void>(
      (param, _) => constructor(param),
    );
  }

  static void resetLazySingleton<T extends Object>() {
    _provider.resetLazySingleton<T>();
  }
}

void initializeDependencies() {
  final appModules = <AppModule>[
    HomeModule(),
    GameModule(),
  ];

  for (final module in appModules) {
    module.registerDependencies();
  }
}
