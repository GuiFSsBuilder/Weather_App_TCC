class HttpError {
  final String message;
  final int statusCode;

  const HttpError({
    required this.message,
    required this.statusCode,
  });
}
