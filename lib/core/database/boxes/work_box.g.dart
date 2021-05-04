// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_box.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class WorkBoxAdapter extends TypeAdapter<WorkBox> {
  @override
  final int typeId = 6;

  @override
  WorkBox read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return WorkBox(
      occupation: fields[0] as String?,
      base: fields[1] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, WorkBox obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.occupation)
      ..writeByte(1)
      ..write(obj.base);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WorkBoxAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
