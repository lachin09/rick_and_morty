import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:natiqa_app/core/interfaces/character_repo_interface.dart';
import 'package:natiqa_app/modules/character/cubit/character_cubit.dart';
import 'package:natiqa_app/modules/character/models/character_model.dart';
import 'package:natiqa_app/modules/character/pages/character_details_page.dart';
import 'package:natiqa_app/modules/character/pages/character_page.dart';
import 'package:natiqa_app/modules/character/repositories/character_repo.dart';
import 'package:natiqa_app/modules/character/services/character_service.dart';
import 'package:natiqa_app/modules/navigation/routes.dart';

class CharacterModule extends Module {
  @override
  void binds(i) {
    i.addSingleton(() => Dio());
    i.add<InterfaceCharacterRepo>(CharacterRepo.new);
    i.addSingleton<CharacterService>(CharacterService.new);
    i.addSingleton<CharacterCubit>(CharacterCubit.new);
  }

  @override
  void routes(r) {
    r.child(
      Routes.character.homePage,
      child:
          (_) => BlocProvider(
            create: (_) => Modular.get<CharacterCubit>(),
            child: CharacterPage(),
          ),
    );
    r.child(
      Routes.character.detailsPage,
      child: (_) {
        final character = Modular.args.data as CharacterModel;
        return CharacterDetailsPage(character: character);
      },
    );
  }
}
