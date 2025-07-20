import 'package:flutter_modular/flutter_modular.dart';
import 'package:natiqa_app/modules/character/character_module.dart';
import 'package:natiqa_app/modules/home/home_module.dart';
import 'package:natiqa_app/modules/navigation/routes.dart';

class AppModule extends Module {
  @override
  void routes(RouteManager r) {
    r.module(Routes.home.module, module: HomeModule());
    r.module(Routes.character.module, module: CharacterModule());
  }
}
