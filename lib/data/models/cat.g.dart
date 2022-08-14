// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cat.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CatAdapter extends TypeAdapter<Cat> {
  @override
  final int typeId = 1;

  @override
  Cat read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Cat(
      fact: fields[1] as String,
      length: fields[3] as int,
      dateViewed: fields[2] as String?,
      urlImage: fields[4] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Cat obj) {
    writer
      ..writeByte(4)
      ..writeByte(1)
      ..write(obj.fact)
      ..writeByte(2)
      ..write(obj.dateViewed)
      ..writeByte(3)
      ..write(obj.length)
      ..writeByte(4)
      ..write(obj.urlImage);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CatAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Cat _$CatFromJson(Map<String, dynamic> json) => Cat(
      fact: json['fact'] as String,
      length: json['length'] as int,
      dateViewed: json['dateViewed'] as String?,
      urlImage: json['urlImage'] as String?,
    );

