

String durationToString(int minutes) {
  var d = Duration(minutes: minutes);
  List<String> parts = d.toString().split(':');
  return '${parts[0].padLeft(2, '0')}:${parts[1].padLeft(2, '0')}';
}

int intFromTime(DateTime date) {
  return date.hour * 60 + date.minute;
}

double progress(DateTime? currentPrayerTime, DateTime? nextPrayerTime) {
  if (nextPrayerTime != null && currentPrayerTime != null) {
    if (nextPrayerTime.millisecondsSinceEpoch >=
        DateTime.now().millisecondsSinceEpoch) {
      return (intFromTime(DateTime.now()) - intFromTime(currentPrayerTime)) /
          (intFromTime(nextPrayerTime) - intFromTime(currentPrayerTime));
    }
  }
  return 0.0;
}

String amPm(DateTime? dateTime) {
  if (dateTime != null) {
    dateTime = dateTime.toLocal();
    var hours = dateTime.hour;
    var minute = dateTime.minute;
    var ampm = hours >= 12 ? 'pm' : 'am';
    hours = hours % 12;
    hours = hours != 0 ? hours : 12;
    var h = hours < 10 ? '0$hours' : hours;
    var m = minute < 10 ? '0$minute' : minute;
    return "$h:$m $ampm";
  } else {
    return "";
  }
}

extension DateOnlyCompare on DateTime {
  bool isSameDate(DateTime other) {
    return year == other.year && month == other.month && day == other.day;
  }
}
