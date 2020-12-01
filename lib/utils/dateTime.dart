import 'package:intl/intl.dart';

class DateUtil {
  DateUtil._();

  static DateTime todayDate() { return DateTime.now();}

  static DateTime yesterdayDate() {
    final today = DateUtil.todayDate();
    final yesterday = today.subtract(const Duration(days: 1));
    return yesterday;
  }

  static DateTime stringToDateFormatter(String dateTime) {
    return DateTime.parse(dateTime);
  }

  static String dateTimeToStringFormatter(DateTime dateTime, {String formatMask = 'yyyy-MM-dd'}) {
    final formatter = DateFormat(formatMask);
    return formatter.format(dateTime);
  }

}