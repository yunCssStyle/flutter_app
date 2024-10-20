import 'package:intl/intl.dart';

String timeSeconds(times) {
  DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(times * 1000);
  int hours = dateTime.hour;
  int minutes = dateTime.minute;
  int seconds = dateTime.second;
  return '${hours >= 10 ? hours : '0$hours'}:${minutes >= 10 ? minutes : '0$minutes'}:${seconds >= 10 ? seconds : '0$seconds'}';
}

String formatTimestampUtc(timestamp) {
  DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);
  DateTime utcDateTime = dateTime.toUtc(); // Convert to UTC
  String formattedTime = DateFormat('HH:mm:ss').format(utcDateTime);
  return formattedTime;
}

String reportsSeconds(times) {
  DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(times * 1000);
  int year = dateTime.year;
  int month = dateTime.month;
  int day = dateTime.day;
  return '${day >= 10 ? day : '0$day'}/${month >= 10 ? month : '0$month'}/$year';
}

int toDay() {
  DateTime now = DateTime.now().toUtc(); // 현재 UTC 시간
  DateTime tomorrow =
      DateTime(now.year, now.month, now.day + 1); // 내일 00:00 UTC

  return tomorrow.millisecondsSinceEpoch;
}

String timeSecond(times) {
  int hours = times ~/ 3600; // 시
  int minutes = (times % 3600) ~/ 60; // 분
  int seconds = times % 60; // 초
  String timeFormatted =
      '$hours:${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
  return timeFormatted;
}
