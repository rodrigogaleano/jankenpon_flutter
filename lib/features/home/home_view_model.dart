import '../../support/enums/move_enum.dart';
import 'components/move_item/move_item_view.dart';
import 'components/move_item/move_item_view_model.dart';
import 'home_view_controller.dart';

class HomeViewModel extends HomeProtocol {
  @override
  List<MoveItemViewModelProtocol> get moveItemViewModels {
    return MoveEnum.values.map((move) {
      return MoveItemViewModel(move: move);
    }).toList();
  }
}
