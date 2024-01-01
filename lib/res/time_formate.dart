import 'package:intl/intl.dart';

String getTimeFormate(String input) {
  DateTime now = DateTime.now();
  DateTime inputDate = DateTime.parse(input);
  // Condition 1: Same date, show hours or minutes
  if (now.difference(inputDate.subtract(const Duration(days: 1))).isNegative) {
    String formattedDate = DateFormat.Hm().format(now); // Hours and minutes
    return formattedDate;
  } else {
    // Condition 2: Within a month, show week and date
    if (now
        .difference(inputDate.subtract(const Duration(days: 30)))
        .isNegative) {
      String formattedDate = DateFormat("EEE, MMM d, yyyy").format(now);
      return formattedDate;
    } else {
      // More than a month ago, show "Feb 21, 2023" format
      String formattedDate = DateFormat("MMM d, yyyy").format(now);
      return formattedDate;
    }
  }
}
