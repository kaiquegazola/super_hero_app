import 'package:equatable/equatable.dart';

class PowerstatsEntity extends Equatable {
  const PowerstatsEntity({
    this.intelligence,
    this.strength,
    this.speed,
    this.durability,
    this.power,
    this.combat,
  });

  final int? intelligence;
  final int? strength;
  final int? speed;
  final int? durability;
  final int? power;
  final int? combat;

  @override
  List<Object?> get props => [
        intelligence,
        strength,
        speed,
        durability,
        power,
        combat,
      ];
}
