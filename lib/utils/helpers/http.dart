import 'package:test_flutter_template_builders/utils/entities/entities.dart';
import 'package:test_flutter_template_builders/utils/enums/enums.dart';

String getHttpMethodName(HttpMethod method) {
  switch (method) {
    case HttpMethod.delete:
      return 'delete';
    case HttpMethod.get:
      return 'get';
    case HttpMethod.patch:
      return 'patch';
    case HttpMethod.post:
      return 'post';
    case HttpMethod.put:
      return 'put';
    default:
      return 'get';
  }
}

HttpResponse handleResponse(HttpResponse response) {
  final resBody = response.body;
  final statusCode = response.statusCode;

  if (statusCode >= 200 && statusCode < 400) {
    return HttpResponse(
      body: resBody,
      statusCode: statusCode,
    );
  } else {
    String errorMessage = 'Erro';
    if (resBody?['error'] is String) {
      errorMessage = resBody?['error'] as String;
    }
    throw HttpError(
      message: errorMessage,
      statusCode: statusCode,
    );
  }
}
