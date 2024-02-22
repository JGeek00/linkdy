class ApiResponse<T> {
  final bool successful;
  final T? content;
  final int? statusCode;

  const ApiResponse({
    required this.successful,
    this.content,
    this.statusCode,
  });
}
