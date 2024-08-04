import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../features/game/game_view_controller.dart';
import '../features/home/home_view_controller.dart';
import '../support/enums/move_enum.dart';

class AppRouter {
  static final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();

  static const String home = '/home';
  static const String game = 'game';

  static final GoRouter router = GoRouter(
    navigatorKey: rootNavigatorKey,
    initialLocation: home,
    routes: <RouteBase>[
      GoRoute(
        path: home,
        name: home,
        builder: (_, __) => const HomeViewController(),
        routes: [
          GoRoute(
            path: game,
            name: game,
            builder: (_, state) {
              final move = state.extra as MoveEnum;

              return GameViewController(move: move);
            },
          )
        ],
      ),
    ],
  );
}
