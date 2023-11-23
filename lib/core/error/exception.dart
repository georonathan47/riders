/// [Exception] thrown for server related errors and device errors
class DeviceException implements Exception {
  /// Constructor for exceptions
  DeviceException(this.message, {this.statusCode = 404});

  /// Convert error messages from api
  factory DeviceException.fromJson(Map<String, dynamic> json,
          {int code = 404,}) =>
      DeviceException(json['detail'] as String, statusCode: code);

  /// Error message
  final String message;

  /// Error code
  final int statusCode;

  @override
  String toString() => message;
}

/// [Exception] thrown for server related errors and device errors
class NetworkException implements Exception {
  /// Constructor for exceptions
  NetworkException(this.message, {this.statusCode = 404});

  /// Convert error messages from api
  factory NetworkException.fromJson(
    Map<String, dynamic> json, {
    int? code,
  }) {
    return NetworkException(
      json['detail'] as String,
      statusCode: code!,
    );
  }

  /// Error message
  final String message;

  /// Error code
  final int statusCode;

  @override
  String toString() => message;
}
