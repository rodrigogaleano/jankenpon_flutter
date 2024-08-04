import 'package:flutter/material.dart';

abstract class GameViewModelProtocol with ChangeNotifier {}

class GameView extends StatelessWidget {
  final GameViewModelProtocol viewModel;

  const GameView({required this.viewModel, super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
