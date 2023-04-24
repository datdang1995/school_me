enum TimeOfDay { morning, afternoon, evening }

extension TimeOfDayExt on TimeOfDay {
  TimeOfDay get current {
    final hourNow = DateTime.now().hour;
    if (hourNow > 5 && hourNow < 12) {
      return TimeOfDay.morning;
    } else if (hourNow >= 12 && hourNow < 18) {
      return TimeOfDay.afternoon;
    } else {
      return TimeOfDay.evening;
    }
  }
}
