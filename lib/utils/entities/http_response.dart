class HttpResponse {
  final Map<String, dynamic>? body;
  final int statusCode;

  const HttpResponse({
    this.body,
    required this.statusCode,
  });
}
