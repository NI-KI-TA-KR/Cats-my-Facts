import 'package:cats_my_facts/config.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'image_client.g.dart';

@RestApi()
abstract class ImageClient {
  factory ImageClient(Dio dio, {String baseUrl}) = _ImageClient;

  @GET(EndPoint.cat)
  Future<String> getUrlImage({Map<String, dynamic>? queryParam});
}
