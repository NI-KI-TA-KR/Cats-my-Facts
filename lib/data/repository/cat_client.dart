import 'package:cats_my_facts/config.dart';
import 'package:cats_my_facts/data/models/cat.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'cat_client.g.dart';

@RestApi()
abstract class CatClient {
  factory CatClient(Dio dio, {String baseUrl}) = _CatClient;

  @GET(EndPoint.fact)
  Future<Cat> getCatFacts();

  @GET(EndPoint.cat)
  Future<String> getUrlImage({Map<String, dynamic>? queryParam});
}
