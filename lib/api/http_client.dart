import 'package:dio/dio.dart';
import 'package:weather_app_tcc/utils/entities/http_error.dart';
import 'package:weather_app_tcc/utils/entities/http_response.dart';
import 'package:weather_app_tcc/utils/enums/http.dart';
import 'package:weather_app_tcc/utils/helpers/helpers.dart';
import 'package:weather_app_tcc/utils/interfaces/interfaces.dart';
import 'package:weather_app_tcc/utils/types/types.dart';

class HttpClient implements IHttpClient {
  final Dio _dio = Dio(BaseOptions(
    connectTimeout: 5000,
    receiveTimeout: 3000,
  ));

  @override
  Future<HttpResponse> request({
    required String url,
    required HttpMethod method,
    Json? data,
    Json<String>? params,
    Json<String>? headers,
  }) async {
    try {
      final response = await _dio.request(
        url,
        options: Options(
          method: getHttpMethodName(method),
          headers: headers,
        ),
        data: data,
        queryParameters: params,
      );
      return handleResponse(HttpResponse(
        statusCode: response.statusCode ?? 400,
        body: response.data as Json,
      ));
    } on DioError catch (e) {
      throw HttpError(
        message: e.message,
        statusCode: e.response?.statusCode ?? 500,
      );
    } catch (e) {
      throw HttpError(
        message: e.toString(),
        statusCode: 500,
      );
    }
  }
}
