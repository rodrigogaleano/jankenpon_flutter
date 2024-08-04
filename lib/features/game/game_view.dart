import 'package:flutter/material.dart';

abstract class GameViewModelProtocol with ChangeNotifier {
  String get userMove;
  String get computerMove;
}

class GameView extends StatelessWidget {
  final GameViewModelProtocol viewModel;

  const GameView({required this.viewModel, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AnimatedBuilder(
              animation: viewModel,
              builder: (_, __) {
                return AnimatedSwitcher(
                  duration: const Duration(milliseconds: 200),
                  child: Text(
                    viewModel.computerMove,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 100),
                  ),
                );
              },
            ),
            const Spacer(),
            Text(
              viewModel.userMove,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 100),
            ),
            const Text(
              'You',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
