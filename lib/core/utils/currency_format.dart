import 'package:intl/intl.dart';

/// Format Currency
class CurrencyFormatter {
  /// Finds local currency symbol
  static String _symbol() {
    // Probably find currency from local
    return 'GH¢';
  }

  /// returns amount in thousands or hundreds
  static String clean(double amount) {
    final formatter = NumberFormat('${_symbol()}#,###.##');
    return formatter.format(amount);
  }
}
