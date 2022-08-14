import 'package:cats_my_facts/data/models/cat.dart';

class HistoryState{}

class HistoryLoadingState extends HistoryState{}

class HistorySuccessState extends HistoryState{
  HistorySuccessState({
    required this.cats,
  });
  final List<Cat> cats;
}

class HistoryErrorState extends HistoryState{}