class CharacterModel {
  final int id;
  final String name;
  final String status;
  final String species;
  final String image;
  final String location;
  final String gender;
  final String origin;

  CharacterModel({
    required this.id,
    required this.name,
    required this.status,
    required this.species,
    required this.image,
    required this.location,
    required this.gender,
    required this.origin,
  });

  factory CharacterModel.fromJson(Map<String, dynamic> json) {
    return CharacterModel(
      id: json['id'],
      name: json['name'],
      status: json['status'],
      species: json['species'],
      image: json['image'],
      gender: json['gender'],
      location: json['location']['name'],
      origin: json['origin']['name'],
    );
  }
}
