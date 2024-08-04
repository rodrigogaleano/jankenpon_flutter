import '../../../../support/enums/move_enum.dart';
import 'move_item_view.dart';

class MoveItemViewModel extends MoveItemViewModelProtocol {
  // MARK: - Init

  final MoveEnum move;

  MoveItemViewModel({required this.move});

  // MARK: - Public Methods

  @override
  String get title => move.title;

  // MARK: - Public Methods

  @override
  void onTap() {
    // TODO: implement onTap
  }
}
