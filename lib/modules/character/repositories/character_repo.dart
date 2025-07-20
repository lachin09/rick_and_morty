import 'package:natiqa_app/modules/character/models/character_model.dart';
import 'package:natiqa_app/core/interfaces/character_repo_interface.dart';
import 'package:dio/dio.dart';

class CharacterRepo implements InterfaceCharacterRepo {
  final Dio dio;

  CharacterRepo(this.dio);

  @override
  Future<List<CharacterModel>> fetchCharacters() async {
    final response = await dio.get('https://rickandmortyapi.com/api/character');
    final List results = response.data["results"];
    return results.map((json) => CharacterModel.fromJson(json)).toList();
  }
}
