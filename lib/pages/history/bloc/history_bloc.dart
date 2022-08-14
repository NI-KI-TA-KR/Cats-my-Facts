import 'package:cats_my_facts/data/db/history_db.dart';
import 'package:cats_my_facts/pages/history/bloc/history_event.dart';
import 'package:cats_my_facts/pages/history/bloc/history_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HistoryBloc extends Bloc<HistoryEvent, HistoryState> {
  HistoryBloc() : super(HistoryLoadingState()) {
    on((event, emit) async {
      emit(HistoryLoadingState());
      try {
        final cats = await HistoryDB().getHistory;
        cats.sort(
          ((a, b) => a.dateTime!.compareTo(b.dateTime!)),
          );
        final result = cats.reversed.toList();
        emit(HistorySuccessState(cats: result));
      } catch (_) {
        emit(HistoryErrorState());
      }
    });
  }
}
