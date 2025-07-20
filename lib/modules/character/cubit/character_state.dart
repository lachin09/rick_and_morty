import 'package:natiqa_app/modules/character/models/character_model.dart';

abstract class CharacterState {}

class CharacterInitial extends CharacterState {}

class CharacterLoading extends CharacterState {}

class CharacterLoaded extends CharacterState {
  final List<CharacterModel> characters;

  CharacterLoaded(this.characters);
}

class CharacterError extends CharacterState {
  final String error;

  CharacterError(this.error);
}
