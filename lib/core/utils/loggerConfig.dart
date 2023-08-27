import 'package:intl/intl.dart';
import 'package:logger/logger.dart';

Logger logger = Logger(
  printer: PrefixPrinter(
    PrettyPrinter(
      methodCount: 2,
      errorMethodCount: 8,
      lineLength: 120,
      colors: true,
      printEmojis: true,
      printTime: false,
    ),
    info: 'INFO',
    debug: 'DEBUG',
    error: 'ERROR',
    warning: 'WARNING',
    verbose: 'VERBOSE',
  ),
);

NumberFormat numberFormat = NumberFormat('###,##0.00', 'en_US');
