import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:natiqa_app/modules/character/cubit/character_state.dart';
import 'package:natiqa_app/modules/navigation/navigation_service.dart';
import '../cubit/character_cubit.dart';

class CharacterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cubit = Modular.get<CharacterCubit>();

    return Scaffold(
      appBar: AppBar(title: Text('Rick and Morty')),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: cubit.fetchCharacters,
            child: Text('Load Characters'),
          ),
          Expanded(
            child: BlocBuilder<CharacterCubit, CharacterState>(
              builder: (context, state) {
                if (state is CharacterLoading) {
                  return Center(child: CircularProgressIndicator());
                } else if (state is CharacterLoaded) {
                  return ListView.builder(
                    itemCount: state.characters.length,
                    itemBuilder: (_, index) {
                      final character = state.characters[index];
                      return Card(
                        child: ListTile(
                          leading: Image.network(character.image),
                          title: Text(character.name),
                          subtitle: Text(
                            '${character.species} | ${character.status}',
                          ),
                          onTap: () {
                            NavigationService.toCharacterDetailsPage(character);
                          },
                        ),
                      );
                    },
                  );
                } else if (state is CharacterError) {
                  return Center(child: Text('Error: ${state.error}'));
                }
                return Center(child: Text('Press button to load characters'));
              },
            ),
          ),
        ],
      ),
    );
  }
}
