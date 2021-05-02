import 'package:super_hero_app/feature/hero/domain/entities/appearance_entity.dart';

class AppearanceModel extends AppearanceEntity {
  const AppearanceModel({
    String? gender,
    String? race,
    List<String>? height,
    List<String>? weight,
    String? eyeColor,
    String? hairColor,
  }) : super(
          gender: gender,
          race: race,
          height: height,
          weight: weight,
          eyeColor: eyeColor,
          hairColor: hairColor,
        );

  factory AppearanceModel.fromJson(dynamic json) {
    return AppearanceModel(
      gender: json['gender'],
      race: json['race'],
      height: json['height'] != null ? json['height'].cast<String>() : [],
      weight: json['weight'] != null ? json['weight'].cast<String>() : [],
      eyeColor: json['eyeColor'],
      hairColor: json['hairColor'],
    );
  }

  Map<String, dynamic> toJson() {
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
