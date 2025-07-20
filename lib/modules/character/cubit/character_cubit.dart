import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:natiqa_app/modules/character/cubit/character_state.dart';
import 'package:natiqa_app/modules/character/services/character_service.dart';

class CharacterCubit extends Cubit<CharacterState> {
  final CharacterService service;

  CharacterCubit(this.service) : super(CharacterInitial());

  Future<void> fetchCharacters() async {
    emit(CharacterLoading());
    try {
      final characters = await service.getCharacters();
      emit(CharacterLoaded(characters));
    } catch (e) {
      emit(CharacterError(e.toString()));
    }
  }
}
