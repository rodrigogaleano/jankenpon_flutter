import 'dart:async';
import 'dart:math';

import '../../support/enums/move_enum.dart';
import 'game_view_controller.dart';

class GameViewModel extends GameProtocol {
  // MARK: - Private Properties

  Timer? _timer;
  MoveEnum? _computerMove;

  // MARK: - Init

  final MoveEnum move;

  GameViewModel({required this.move});

  // MARK: - Public Getters

  @override
  String get userMove => move.emoji;

  @override
  String get computerMove => _computerMove?.emoji ?? '';

  // MARK: - Public Methods

  @override
  void startAnimation() {
    _timer?.cancel();

    Timer(const Duration(seconds: 2), () {
      _timer?.cancel();
      Future.delayed(const Duration(milliseconds: 500), () {
        _verifyResult();
      });
    });

    _timer = Timer.periodic(const Duration(milliseconds: 100), (timer) {
      _computerMove = MoveEnum.values[Random().nextInt(MoveEnum.values.length)];
      notifyListeners();
    });
  }

  void _verifyResult() {
    if (move.win == _computerMove) {
      return showResult?.call('Win');
    }

    if (move.lose == _computerMove) {
      return showResult?.call('Lose');
    }

    return showResult?.call('Draw');
  }
}
