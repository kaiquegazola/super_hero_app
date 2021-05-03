// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'connection_box.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ConnectionBoxAdapter extends TypeAdapter<ConnectionBox> {
  @override
  final int typeId = 2;

  @override
  ConnectionBox read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ConnectionBox(
      groupAffiliation: fields[0] as String?,
      relatives: fields[1] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, ConnectionBox obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.groupAffiliation)
      ..writeByte(1)
      ..write(obj.relatives);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ConnectionBoxAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
