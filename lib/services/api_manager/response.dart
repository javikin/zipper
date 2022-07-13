class Response {
  final dynamic data;
  final int statusCode;
  final String? error;
  final dynamic rawData;
  final bool isSuccessful;

  Response({
    this.data,
    this.statusCode = -1,
    this.error,
    this.rawData,
    this.isSuccessful = false,
  });
}
