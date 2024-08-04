import '../../../support/enums/move_enum.dart';
import '../../../support/service_locator/app_module.dart';
import '../../../support/service_locator/service_locator.dart';
import '../game_view_controller.dart';
import '../game_view_model.dart';

class GameModule extends AppModule {
  @override
  void registerDependencies() {
    ServiceLocator.registerFactoryParam<GameProtocol, MoveEnum>((move) {
      return GameViewModel(move: move);
    });
  }
}
