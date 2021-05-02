import 'package:super_hero_app/feature/hero/domain/entities/biography_entity.dart';

class BiographyModel extends BiographyEntity {
  const BiographyModel({
    String? fullName,
    String? alterEgos,
    List<String>? aliases,
    String? placeOfBirth,
    String? firstAppearance,
    String? publisher,
    String? alignment,
  }) : super(
          fullName: fullName,
          alterEgos: alterEgos,
          aliases: aliases,
          placeOfBirth: placeOfBirth,
          firstAppearance: firstAppearance,
          publisher: publisher,
          alignment: alignment,
        );

  factory BiographyModel.fromJson(dynamic json) => BiographyModel(
        fullName: json['fullName'],
        alterEgos: json['alterEgos'],
        aliases: json['aliases'] != null ? json['aliases'].cast<String>() : [],
        placeOfBirth: json['placeOfBirth'],
        firstAppearance: json['firstAppearance'],
        publisher: json['publisher'],
        alignment: json['alignment'],
      );

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'fullName': fullName,
      'alterEgos': alterEgos,
      'aliases': aliases,
      'placeOfBirth': placeOfBirth,
      'firstAppearance': firstAppearance,
      'publisher': publisher,
      'alignment': alignment,
    };
  }
}
