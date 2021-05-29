import 'package:test_flutter_template_builders/utils/entities/entities.dart';
import 'package:test_flutter_template_builders/utils/enums/enums.dart';

abstract class IHttpClient {
  Future<HttpResponse> request({
    required String url,
    required HttpMethod method,
    Map<String, dynamic>? data,
    Map<String, String>? params,
    Map<String, String>? headers,
  });
}
