import 'package:dio/dio.dart';
import 'package:test_flutter_template_builders/utils/entities/http_error.dart';
import 'package:test_flutter_template_builders/utils/enums/http.dart';
import 'package:test_flutter_template_builders/utils/entities/http_response.dart';
import 'package:test_flutter_template_builders/utils/helpers/helpers.dart';
import 'package:test_flutter_template_builders/utils/interfaces/interfaces.dart';

class HttpClient implements IHttpClient {
  final Dio _dio = Dio(BaseOptions(
    baseUrl: Env.apiBasePath,
    connectTimeout: 5000,
    receiveTimeout: 3000,
    headers: {
      'client_id': Env.clientId,
    },
  ));

  @override
  Future<HttpResponse> request({
    required String url,
    required HttpMethod method,
    Map<String, dynamic>? data,
    Map<String, String>? params,
    Map<String, String>? headers,
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
        body: response.data as Map<String, dynamic>,
      ));
    } catch (e) {
      throw HttpError(
        message: e.toString(),
        statusCode: 500,
      );
    }
  }
}
