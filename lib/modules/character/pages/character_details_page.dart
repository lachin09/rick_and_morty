import 'package:flutter/material.dart';
import '../models/character_model.dart';

class CharacterDetailsPage extends StatelessWidget {
  final CharacterModel character;

  const CharacterDetailsPage({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(character.name)),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Image.network(character.image, height: 500),
              const SizedBox(height: 0),
              Text(
                character.name,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(height: 10),
              Text('Status: ${character.status}'),
              Text('Species: ${character.species}'),
              Text('Gender: ${character.gender}'),
              Text('Origin: ${character.origin}'),
              Text('Location: ${character.location}'),
            ],
          ),
        ),
      ),
    );
  }
}
