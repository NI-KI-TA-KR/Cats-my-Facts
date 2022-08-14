import 'package:cats_my_facts/data/models/cat.dart';
import 'package:hive/hive.dart';

class HistoryDB {
  factory HistoryDB() => _instance;
  HistoryDB._internal();
  static final HistoryDB _instance = HistoryDB._internal();

  Future<Box<Cat>> get _box => Hive.openBox<Cat>('history_storage');

  Future<List<Cat>> add(Cat cat) async {
    final Box<Cat> box = await _box;
    await box.put(cat.fact.hashCode, cat);
    return box.values.map((e) => e).toList();
  }

  Future<List<Cat>> get getHistory async {
    final Box<Cat> box = await _box;
    return box.values.map((e) => e).toList();
  }
}
