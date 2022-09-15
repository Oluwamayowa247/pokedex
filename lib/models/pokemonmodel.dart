class Pokemon{
  late final String id;
  late final String name;
  late List types;
  late int hitPoints;
  late int attack;
  late int defense;
  late int speed;
  Pokemon({
    required this.id,
    required this.name,
    required this.types,
    required this.hitPoints,
    required this.attack,
    required this.defense,
    required this.speed,
  });
}
