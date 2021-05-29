import 'package:weather_app_tcc/utils/entities/entities.dart';
import 'package:weather_app_tcc/utils/enums/enums.dart';
import 'package:weather_app_tcc/utils/types/types.dart';

abstract class IHttpClient {
  Future<HttpResponse> request({
    required String url,
    required HttpMethod method,
    Json? data,
    Json<String>? params,
    Json<String>? headers,
  });
}
