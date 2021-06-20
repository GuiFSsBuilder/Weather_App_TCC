import 'package:weather_app_tcc/utils/types/types.dart';

class HttpResponse {
  final Json body;
  final int statusCode;

  const HttpResponse({
    required this.body,
    required this.statusCode,
  });
}
