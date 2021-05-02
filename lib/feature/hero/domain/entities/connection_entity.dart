import 'package:equatable/equatable.dart';

class ConnectionEntity extends Equatable {
  const ConnectionEntity({
    this.groupAffiliation,
    this.relatives,
  });

  final String? groupAffiliation;
  final String? relatives;

  @override
  List<Object?> get props => [
        groupAffiliation,
        relatives,
      ];
}
