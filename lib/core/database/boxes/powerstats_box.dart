import 'package:hive/hive.dart';
import 'package:super_hero_app/core/database/boxes_id.dart';

part 'powerstats_box.g.dart';

@HiveType(typeId: Boxes.powerstats)
class PowerstatsBox extends HiveObject {
  PowerstatsBox({
    this.intelligence,
    this.strength,
    this.speed,
    this.durability,
    this.power,
    this.combat,
  });

  factory PowerstatsBox.create(Map<String, dynamic> map) {
    return PowerstatsBox(
      intelligence: map['intelligence'],
      strength: map['strength'],
      speed: map['speed'],
      durability: map['durability'],
      power: map['power'],
      combat: map['combat'],
    );
  }

  @HiveField(0)
  int? intelligence;
  @HiveField(1)
  int? strength;
  @HiveField(2)
  int? speed;
  @HiveField(3)
  int? durability;
  @HiveField(4)
  int? power;
  @HiveField(5)
  int? combat;

  Map<String, dynamic> toMap() {
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
