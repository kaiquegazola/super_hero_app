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
      intelligence: int.tryParse(json['intelligence']),
      strength: int.tryParse(json['strength']),
      speed: int.tryParse(json['speed']),
      durability: int.tryParse(json['durability']),
      power: int.tryParse(json['power']),
      combat: int.tryParse(json['combat']),
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
