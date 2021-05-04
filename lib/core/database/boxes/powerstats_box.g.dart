// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'powerstats_box.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PowerstatsBoxAdapter extends TypeAdapter<PowerstatsBox> {
  @override
  final int typeId = 5;

  @override
  PowerstatsBox read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PowerstatsBox(
      intelligence: fields[0] as int?,
      strength: fields[1] as int?,
      speed: fields[2] as int?,
      durability: fields[3] as int?,
      power: fields[4] as int?,
      combat: fields[5] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, PowerstatsBox obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.intelligence)
      ..writeByte(1)
      ..write(obj.strength)
      ..writeByte(2)
      ..write(obj.speed)
      ..writeByte(3)
      ..write(obj.durability)
      ..writeByte(4)
      ..write(obj.power)
      ..writeByte(5)
      ..write(obj.combat);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PowerstatsBoxAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
