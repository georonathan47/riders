import 'dart:io';

import '../error/exception.dart';

/// Checks for internet connectivity
abstract class NetworkInfo {
  /// Verifies if device has internet connection.
  Future<bool> hasInternet();
}

/// Implements [NetworkInfo]
class NetworkInfoImpl implements NetworkInfo {
  @override
  Future<bool> hasInternet() async {
    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) return true;
      throw DeviceException(
        '🛜 No internet access!\nPlease connect your device to the internet and try again.',
        statusCode: 500,
      );
    } on SocketException catch (_) {
      throw DeviceException(
        '🛜 No internet access!\nPlease connect your device to the internet and try again.',
        statusCode: 500,
      );
    }
  }
}
