import 'package:equatable/equatable.dart';

class BiographyEntity extends Equatable {
  const BiographyEntity({
    this.fullName,
    this.alterEgos,
    this.aliases,
    this.placeOfBirth,
    this.firstAppearance,
    this.publisher,
    this.alignment,
  });

  final String? fullName;
  final String? alterEgos;
  final List<String>? aliases;
  final String? placeOfBirth;
  final String? firstAppearance;
  final String? publisher;
  final String? alignment;

  @override
  List<Object?> get props => [
        fullName,
        alterEgos,
        aliases,
        placeOfBirth,
        firstAppearance,
        publisher,
        alignment,
      ];
}
