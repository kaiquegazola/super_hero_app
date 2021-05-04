import 'package:hive/hive.dart';
import 'package:super_hero_app/core/database/boxes_id.dart';

part 'biography_box.g.dart';

@HiveType(typeId: Boxes.biography)
class BiographyBox extends HiveObject {
  BiographyBox({
    this.fullName,
    this.alterEgos,
    this.aliases,
    this.placeOfBirth,
    this.firstAppearance,
    this.publisher,
    this.alignment,
  });

  factory BiographyBox.create(Map<String, dynamic> map) {
    return BiographyBox(
      fullName: map['fullName'],
      alterEgos: map['alterEgos'],
      aliases: map['aliases'] != null ? map['aliases'].cast<String>() : [],
      placeOfBirth: map['placeOfBirth'],
      firstAppearance: map['firstAppearance'],
      publisher: map['publisher'],
      alignment: map['alignment'],
    );
  }

  @HiveField(0)
  String? fullName;
  @HiveField(1)
  String? alterEgos;
  @HiveField(2)
  List<String>? aliases;
  @HiveField(3)
  String? placeOfBirth;
  @HiveField(4)
  String? firstAppearance;
  @HiveField(5)
  String? publisher;
  @HiveField(6)
  String? alignment;

  Map<String, dynamic> toMap() {
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
