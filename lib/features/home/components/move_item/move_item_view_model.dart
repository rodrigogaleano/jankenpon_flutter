import '../../../../support/enums/move_enum.dart';
import 'move_item_view.dart';

abstract class MoveItemDelegate {
  void onTap(MoveEnum move);
}

class MoveItemViewModel extends MoveItemViewModelProtocol {
  // MARK: - Init

  final MoveEnum move;
  final MoveItemDelegate delegate;

  MoveItemViewModel({
    required this.move,
    required this.delegate,
  });

  // MARK: - Public Methods

  @override
  String get title => move.title;

  // MARK: - Public Methods

  @override
  void onTap() {
    delegate.onTap(move);
  }
}
