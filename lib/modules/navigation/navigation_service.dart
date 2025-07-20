import 'package:flutter_modular/flutter_modular.dart';
import 'package:natiqa_app/modules/navigation/routes.dart';

class NavigationService {
  static void toCharacterDetailsPage(character) {
    Modular.to.pushNamed(
      Routes.character.getRoute(Routes.character.detailsPage),
      arguments: character,
    );
  }

  static void pop() {
    Modular.to.pop();
  }
}
