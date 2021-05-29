import 'package:weather_app_tcc/utils/types/types.dart';

class HttpResponse {
  final Json? body;
  final int statusCode;

  const HttpResponse({
    this.body,
    required this.statusCode,
  });
}
