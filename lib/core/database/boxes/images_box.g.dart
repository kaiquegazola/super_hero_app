// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'images_box.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ImagesBoxAdapter extends TypeAdapter<ImagesBox> {
  @override
  final int typeId = 4;

  @override
  ImagesBox read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ImagesBox(
      xs: fields[0] as String?,
      sm: fields[1] as String?,
      md: fields[2] as String?,
      lg: fields[3] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, ImagesBox obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.xs)
      ..writeByte(1)
      ..write(obj.sm)
      ..writeByte(2)
      ..write(obj.md)
      ..writeByte(3)
      ..write(obj.lg);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ImagesBoxAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
