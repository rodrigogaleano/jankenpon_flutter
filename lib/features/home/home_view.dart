import 'package:flutter/material.dart';

import 'components/move_item/move_item_view.dart';

abstract class HomeViewModelProtocol {
  List<MoveItemViewModelProtocol> get moveItemViewModels;
}

class HomeView extends StatelessWidget {
  final HomeViewModelProtocol viewModel;

  const HomeView({required this.viewModel, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Spacer(),
              const Text('JAN\nKEN\nPON', textAlign: TextAlign.center),
              const Spacer(),
              ...viewModel.moveItemViewModels.map((viewModel) {
                return MoveItemView(viewModel: viewModel);
              }),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
