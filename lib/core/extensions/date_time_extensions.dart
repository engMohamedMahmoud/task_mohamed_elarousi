extension DateTimeExtension on DateTime {
  bool isSameDay(DateTime dateTime) => year == dateTime.year && month == dateTime.month && day == dateTime.day;
}