import 'package:equatable/equatable.dart';

class AppearanceEntity extends Equatable {
  const AppearanceEntity({
    this.gender,
    this.race,
    this.height,
    this.weight,
    this.eyeColor,
    this.hairColor,
  });

  final String? gender;
  final String? race;
  final List<String>? height;
  final List<String>? weight;
  final String? eyeColor;
  final String? hairColor;

  @override
  List<Object?> get props => [
        gender,
        race,
        height,
        weight,
        eyeColor,
        hairColor,
      ];
}
