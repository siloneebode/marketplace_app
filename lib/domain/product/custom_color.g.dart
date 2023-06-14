// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_color.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CustomColorAdapter extends TypeAdapter<CustomColor> {
  @override
  final int typeId = 1;

  @override
  CustomColor read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CustomColor(
      color: fields[2] as String,
      name: fields[1] as String,
      id: fields[0] as int,
    );
  }

  @override
  void write(BinaryWriter writer, CustomColor obj) {
    writer
      ..writeByte(3)
      ..writeByte(2)
      ..write(obj.color)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(0)
      ..write(obj.id);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CustomColorAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
