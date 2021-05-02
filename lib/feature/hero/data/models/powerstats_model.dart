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
      intelligence: json['intelligence'],
      strength: json['strength'],
      speed: json['speed'],
      durability: json['durability'],
      power: json['power'],
      combat: json['combat'],
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'intelligence': intelligence,
      'strength': strength,
      'speed': speed,
      'durability': durability,
      'power': power,
      'combat': combat,
    };
  }
}
