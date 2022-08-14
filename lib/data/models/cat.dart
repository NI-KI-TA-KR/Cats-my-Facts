import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:intl/intl.dart';

part 'cat.g.dart';

@JsonSerializable()
@HiveType(typeId: 1)
class Cat extends HiveObject {
  Cat({
    required this.fact,
    required this.length,
    this.dateViewed,
    this.urlImage,
  });

  @HiveField(1)
  final String fact;

  @HiveField(2)
  String? dateViewed;

  @HiveField(3)
  final int length;

  @HiveField(4)
  String? urlImage;

  factory Cat.fromJson(Map<String, dynamic> json) => _$CatFromJson(json);

  String get dateViewedFormatted {
    final dateTime = dateViewed != null ? DateTime.tryParse(dateViewed!) : DateTime.now();
    return DateFormat('dd-MM-yyyy hh:mm').format(dateTime!);
  }

  DateTime? get dateTime =>
    dateViewed != null ? DateTime.tryParse(dateViewed!) : DateTime.now();

  @override
  String toString() {
    return fact + " " + length.toString();
  }
}
