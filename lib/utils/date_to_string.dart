import 'package:linkdy/i18n/strings.g.dart';

String dateToString(DateTime date) {
  String addZeros(int value) {
    return value.toString().padLeft(2, '0');
  }

  final today = DateTime.now();
  final yesterday = DateTime.now().subtract(const Duration(days: 1));

  final localDate = date.toLocal();

  if (localDate.day == today.day && localDate.month == today.month && localDate.year == today.year) {
    return t.bookmarks.dates.todayAt(time: "${addZeros(localDate.hour)}:${addZeros(localDate.minute)}");
  } else if (localDate.day == yesterday.day && localDate.month == yesterday.month && localDate.year == yesterday.year) {
    return t.bookmarks.dates.yesterdayAt(time: "${addZeros(localDate.hour)}:${addZeros(localDate.minute)}");
  } else {
    return "${localDate.day}/${localDate.month}/${localDate.year} - ${addZeros(localDate.hour)}:${addZeros(localDate.minute)}";
  }
}
