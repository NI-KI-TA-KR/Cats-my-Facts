import 'package:cats_my_facts/data/models/cat.dart';
import 'package:hive_flutter/adapters.dart';

class HiveHelper {
  factory HiveHelper() => _instance;

  HiveHelper._internal();

  static final HiveHelper _instance = HiveHelper._internal();

  Future<void> init() async {
    await Hive.initFlutter();
    await adapterCat();
  }

  static Future<void> adapterCat() async {
    try {
      Hive.registerAdapter(CatAdapter());
    } catch (e) {
      throw Exception(e);
    }
  }
}
