import 'package:bloc/bloc.dart';
import 'package:cats_my_facts/config.dart';
import 'package:cats_my_facts/data/db/history_db.dart';
import 'package:cats_my_facts/data/repository/cat_client.dart';
import 'package:cats_my_facts/data/repository/image_client.dart';
import 'package:cats_my_facts/pages/fact/bloc/fact_event.dart';
import 'package:cats_my_facts/pages/fact/bloc/fact_state.dart';
import 'package:dio/dio.dart';

class FactBloc extends Bloc<FactEvent, FactState> {
  FactBloc() : super(FactLoadingState()) {
    on((event, emit) async {
      try {
        emit(FactLoadingState());
        
        final catClient = CatClient(Dio(), baseUrl: EndPoint.factApi);
        final imageClient = ImageClient(Dio(), baseUrl: EndPoint.imageApi);
        
        final url = await imageClient.getUrlImage(queryParam: {'json': 'true'});
        final cat = await catClient.getCatFacts()
          ..urlImage = url
          ..dateViewed = DateTime.now().toString();

        await HistoryDB().add(cat);
        emit(FactSuccessState(cat: cat));
      } catch (_) {
        emit(FactErrorState());
      }
    });
  }
}
