import 'package:equatable/equatable.dart';

class WorkEntity extends Equatable {
  const WorkEntity({
    this.occupation,
    this.base,
  });

  final String? occupation;
  final String? base;

  @override
  List<Object?> get props => [
        occupation,
        base,
      ];
}
