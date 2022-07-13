class APIException implements Exception {
  final String? error;
  final dynamic data;
  final int statusCode;

  APIException(this.error, {this.data = '', this.statusCode = -1});

  @override
  String toString() {
    return '$error';
  }
}
