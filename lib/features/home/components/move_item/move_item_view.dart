import 'package:flutter/material.dart';

abstract class MoveItemViewModelProtocol with ChangeNotifier {
  String get title;

  void onTap();
}

class MoveItemView extends StatelessWidget {
  final MoveItemViewModelProtocol viewModel;

  const MoveItemView({required this.viewModel, super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: viewModel.onTap,
      child: Text(viewModel.title),
    );
  }
}
