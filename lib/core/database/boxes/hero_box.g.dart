// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hero_box.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HeroBoxAdapter extends TypeAdapter<HeroBox> {
  @override
  final int typeId = 3;

  @override
  HeroBox read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HeroBox(
      id: fields[0] as int?,
      name: fields[1] as String?,
      slug: fields[2] as String?,
      powerstats: fields[3] as PowerstatsBox?,
      appearance: fields[4] as AppearanceBox?,
      biography: fields[5] as BiographyBox?,
      work: fields[6] as WorkBox?,
      connections: fields[7] as ConnectionBox?,
      images: fields[8] as ImagesBox?,
    );
  }

  @override
  void write(BinaryWriter writer, HeroBox obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.slug)
      ..writeByte(3)
      ..write(obj.powerstats)
      ..writeByte(4)
      ..write(obj.appearance)
      ..writeByte(5)
      ..write(obj.biography)
      ..writeByte(6)
      ..write(obj.work)
      ..writeByte(7)
      ..write(obj.connections)
      ..writeByte(8)
      ..write(obj.images);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HeroBoxAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
