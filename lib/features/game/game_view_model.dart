import '../../support/enums/move_enum.dart';
import 'game_view_controller.dart';

class GameViewModel extends GameProtocol {
  // MARK: - Init

  final MoveEnum move;

  GameViewModel({required this.move});
}
