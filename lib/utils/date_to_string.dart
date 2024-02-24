import 'package:linkdy/i18n/strings.g.dart';

String dateToString(DateTime date) {
  String addZeros(int value) {
    return value.toString().padLeft(2, '0');
  }

  final today = DateTime.now();
  final yesterday = DateTime.now().subtract(const Duration(days: 1));

  if (date.day == today.day && date.month == today.month && date.year == today.year) {
    return t.bookmarks.dates.todayAt(time: "${addZeros(date.hour)}:${addZeros(date.minute)}");
  } else if (date.day == yesterday.day && date.month == yesterday.month && date.year == yesterday.year) {
    return t.bookmarks.dates.yesterdayAt(time: "${addZeros(date.hour)}:${addZeros(date.minute)}");
  } else {
    return "${date.day}/${date.month}/${date.year} - ${addZeros(date.hour)}:${addZeros(date.minute)}";
  }
}
