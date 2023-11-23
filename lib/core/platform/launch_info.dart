import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../error/failures.dart';

/// Launch urls to open the default browser
abstract class LaunchInfo {
  ///  Opens web browser with url
  Future<Either<Failure, bool>> launchUrl(String urlString);
}

/// Implements [LaunchInfo]
class LaunchInfoImpl implements LaunchInfo {
  @override
  Future<Either<Failure, bool>> launchUrl(String urlString) async {
    try {
      await launchUrlString(urlString);
      return const Right(true);
    } on PlatformException {
      return const Left(
        Failure(
          "Device Error!🔔.\nYour device doesn't support this action.",
        ),
      );
    }
  }
}
