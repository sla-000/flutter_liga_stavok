import 'package:intl/intl.dart';

class DateUtil {
  DateUtil._();

  static DateTime todayDate() {
    return DateTime.now();
  }

  static DateTime yesterdayDate() {
    final today = DateUtil.todayDate();
    final yesterday = today.subtract(const Duration(days: 1));
    return yesterday;
  }

  static DateTime stringToDateFormatter(String dateTime) {
    return DateTime.parse(dateTime);
  }

  static String dateTimeToStringFormatter(DateTime dateTime,
      {String formatMask = 'yyyy-MM-dd'}) {
    final formatter = DateFormat(formatMask);
    return formatter.format(dateTime);
  }
}

String getLocalTimeFromIso(String time) {
  if (time?.isEmpty ?? true) {
    return 'N/A';
  }

  final DateTime parsedTime = DateTime.tryParse(time);
  if (parsedTime == null) {
    return 'N/A';
  }

  final DateTime localTime = parsedTime.toLocal();

  return '${localTime.day}.'
      '${localTime.month.toString().padLeft(2, '0')}'
      '.${localTime.year}'
      ', ${localTime.hour.toString().padLeft(2, '0')}'
      ':${localTime.minute.toString().padLeft(2, '0')}';
}
