import 'package:equatable/equatable.dart';

class ImagesEntity extends Equatable {
  const ImagesEntity({
    this.xs,
    this.sm,
    this.md,
    this.lg,
  });

  final String? xs;
  final String? sm;
  final String? md;
  final String? lg;

  @override
  List<Object?> get props => [
        xs,
        sm,
        md,
        lg,
      ];
}
