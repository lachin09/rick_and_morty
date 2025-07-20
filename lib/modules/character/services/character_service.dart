import 'package:natiqa_app/modules/character/models/character_model.dart';
import 'package:natiqa_app/core/interfaces/character_repo_interface.dart';

class CharacterService {
  final InterfaceCharacterRepo repo;

  CharacterService(this.repo);

  Future<List<CharacterModel>> getCharacters() {
    return repo.fetchCharacters();
  }
}
