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
    return ImagesBox();
  }

  @override
  void write(BinaryWriter writer, ImagesBox obj) {
    writer..writeByte(0);
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
