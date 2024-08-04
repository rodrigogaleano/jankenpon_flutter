import 'package:flutter/material.dart';

import '../../support/enums/move_enum.dart';
import '../../support/service_locator/service_locator.dart';
import 'game_view.dart';

abstract class GameProtocol extends GameViewModelProtocol {}

class GameViewController extends StatefulWidget {
  final MoveEnum move;

  const GameViewController({required this.move, super.key});

  @override
  State<GameViewController> createState() => _GameViewControllerState();
}

class _GameViewControllerState extends State<GameViewController> {
  late final GameProtocol viewModel;

  @override
  void initState() {
    super.initState();
    viewModel = ServiceLocator.get<GameProtocol>(param: widget.move);
  }

  @override
  Widget build(BuildContext context) {
    return GameView(viewModel: viewModel);
  }
}
