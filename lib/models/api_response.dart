class ApiResponse {
  final bool successful;
  final dynamic content;
  final int? statusCode;

  const ApiResponse({
    required this.successful,
    this.content,
    this.statusCode,
  });
}
