import 'package:intl/intl.dart';

/// Format Date standard
class DateFormatter {
  static final _today = DateTime.now();

  /// Checks if date is the same as today
  static bool isToday(String date) {
    final parsedDate = DateTime.parse(date);
    final diff = _today.difference(parsedDate).inDays;
    return diff == 0;
  }

  /// returns the Month day, year eg: September 4, 2021 Sep 4, 2021
  static String todayDate() {
    final formatter = DateFormat.yMMMMd();
    return formatter.format(_today);
  }

  /// returns the Week Day eg: Monday
  static String weekDay() {
    final formatter = DateFormat.EEEE();
    return formatter.format(_today);
  }

  /// Formats date into year,month,day and time eg: September 4, 2021 11:00 am
  static String toDate(DateTime date) {
    final formatter = DateFormat.yMMMMd();
    return '${formatter.format(date)} '
        '${DateFormat.jm().format(date)}';
  }

  /// Formats date into month,day eg: September 4
  static String shortDate(DateTime date) {
    final formatter = DateFormat.MMMd();
    return formatter.format(date);
  }

  /// Formats date into month/day/year eg: 09/04/2021
  static String shortDateAlternate(DateTime date) {
    final formatter = DateFormat.yMd();
    return formatter.format(date);
  }
}
