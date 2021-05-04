import 'package:hive/hive.dart';
import 'package:super_hero_app/core/database/boxes_id.dart';

part 'appearance_box.g.dart';

@HiveType(typeId: Boxes.appearance)
class AppearanceBox extends HiveObject {
  AppearanceBox({
    this.gender,
    this.race,
    this.height,
    this.weight,
    this.eyeColor,
    this.hairColor,
  });

  factory AppearanceBox.create(Map<String, dynamic> map) {
    return AppearanceBox(
      gender: map['gender'],
      race: map['race'],
      height: map['height'],
      weight: map['weight'],
      eyeColor: map['eyeColor'],
      hairColor: map['hairColor'],
    );
  }

  @HiveField(0)
  String? gender;
  @HiveField(1)
  String? race;
  @HiveField(2)
  List<String>? height;
  @HiveField(3)
  List<String>? weight;
  @HiveField(4)
  String? eyeColor;
  @HiveField(5)
  String? hairColor;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gender': gender,
      'race': race,
      'height': height,
      'weight': weight,
      'eyeColor': eyeColor,
      'hairColor': hairColor,
    };
  }
}
