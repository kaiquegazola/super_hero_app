import 'package:equatable/equatable.dart';

class DashboardHeroFilterEntity extends Equatable {
  const DashboardHeroFilterEntity({
    this.name,
    this.gender = '',
  });

  final String? name;
  final String? gender;

  DashboardHeroFilterEntity copyWith({
    String? name,
    String? gender,
  }) {
    return DashboardHeroFilterEntity(
      name: name ?? this.name,
      gender: gender ?? this.gender,
    );
  }

  @override
  List<Object?> get props => [
        name,
        gender,
      ];
}
