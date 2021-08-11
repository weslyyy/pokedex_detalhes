class Pokemon {
  final String name;
  final int number;
  final String photo;
  final String description;
  final double height;
  final String type;
  final double weight;
  final String skill;
  final List<String> weaknesses;

  Pokemon({
    required this.name,
    required this.number,
    required this.photo,
    required this.description,
    required this.height,
    required this.type,
    required this.weight,
    required this.skill,
    required this.weaknesses,
  });
}
