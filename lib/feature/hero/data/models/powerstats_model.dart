import 'package:super_hero_app/feature/hero/domain/entities/powerstats_entity.dart';

class PowerstatsModel extends PowerstatsEntity {
  const PowerstatsModel({
    int? intelligence,
    int? strength,
    int? speed,
    int? durability,
    int? power,
    int? combat,
  }) : super(
          intelligence: intelligence,
          strength: strength,
          speed: speed,
          durability: durability,
          power: power,
          combat: combat,
        );

  factory PowerstatsModel.fromJson(dynamic json) {
    return PowerstatsModel(
      intelligence: int.parse(json['intelligence']),
      strength: int.parse(json['strength']),
      speed: int.parse(json['speed']),
      durability: int.parse(json['durability']),
      power: int.parse(json['power']),
      combat: int.parse(json['combat']),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'intelligence': intelligence.toString(),
      'strength': strength.toString(),
      'speed': speed.toString(),
      'durability': durability.toString(),
      'power': power.toString(),
      'combat': combat.toString(),
    };
  }
}
