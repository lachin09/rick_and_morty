import 'package:natiqa_app/modules/character/models/character_model.dart';

abstract class InterfaceCharacterRepo {
  Future<List<CharacterModel>> fetchCharacters();
}
