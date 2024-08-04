import 'package:flutter/material.dart';

import '../../support/enums/move_enum.dart';
import '../../support/service_locator/service_locator.dart';
import 'game_view.dart';

abstract class GameProtocol extends GameViewModelProtocol {
  void startAnimation();

  void Function(String result)? showResult;
}

class GameViewController extends StatefulWidget {
  final MoveEnum move;

  const GameViewController({required this.move, super.key});

  @override
  State<GameViewController> createState() => _GameViewControllerState();
}

class _GameViewControllerState extends State<GameViewController> {
  late final GameProtocol viewModel;

  // MARK: - Life Cycle

  @override
  void initState() {
    super.initState();
    viewModel = ServiceLocator.get<GameProtocol>(param: widget.move);
    _bind();
    viewModel.startAnimation();
  }

  @override
  Widget build(BuildContext context) {
    return GameView(viewModel: viewModel);
  }

  // MARK: - Binding

  void _bind() {
    viewModel.showResult = (result) {
      showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            title: Text(result),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('OK'),
              ),
            ],
          );
        },
      );
    };
  }
}
