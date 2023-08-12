part of core;

class ControllerCore extends ChangeNotifier {
  var _prayers = [
    mod.Prayer(title: "الفجر",selected: false),
    mod.Prayer(title: "الشروق",selected: false),
    mod.Prayer(title: "الظهر",selected: false),
    mod.Prayer(title: "العصر",selected: false),
    mod.Prayer(title: "المغرب",selected: false),
    mod.Prayer(title: "العشاء",selected: false),
  ];

  int currentPrayer = 0;

  // ignore: unnecessary_getters_setters
  List<mod.Prayer> get prayers => _prayers;
  set prayers(List<mod.Prayer> value) => _prayers = value;

  mod.Prayer getNextPrayer() {
    //DateTime now = DateTime.now();

    mod.Prayer myPrayer = _prayers[currentPrayer];
    // var index = 0;
    // for (var element in _prayers) {
    //   index++;
    //   element.selected = false;
    //   if (intFromTime(DateFormat("HH:mm").parse(element.time)) >
    //       intFromTime(now)) {
    //     //Upcoming prayer
    //     myPrayer = element;
    //     break;
    //   } else if (intFromTime(DateFormat("HH:mm").parse(element.time)) ==
    //       intFromTime(now)) {
    //     //Current prayer
    //     myPrayer = element;
    //     myPrayer.status = "now";
    //     break;
    //   } else {
    //     //Last prayer
    //     myPrayer = element;
    //     myPrayer.status = "final";
    //     _prayers[index - 1].selected = false;
    //   }
    // }
    // if (index != 1) {
    //   _prayers[index - 2].selected = true;
    // }
    return myPrayer;
  }

  String calculateRemindTime(mod.Prayer prayer) {
    //now, upcoming, final
    DateTime now = DateTime.now();
    if (prayer.status == "now") {
      return "حان الآن وعد صلاة";
    } else if (prayer.status == "upcoming") {
      // var remindTime = intFromTime(DateFormat("HH:mm").parse(prayer.time)) -
      //     intFromTime(now);
      // return " تبقى ${durationToString(remindTime)} لصلاة ";
      return "";
    } else {
      return "تقبل الله طاعتكم";
    }
  }

  /// Get all prayers in this day
  Future<List<mod.Prayer>> getPrayer({DateTime? dateTime}) async {
    try {
      var today = dateTime ?? DateTime.now();
      List<mod.Prayer> allPrayersForMonth = [];
      if ((await Geolocator.checkPermission()) != LocationPermission.denied) {
      } else {
        final state = await Geolocator.requestPermission();
        if (state == LocationPermission.denied) return [];
      }
      var location = await Geolocator.getCurrentPosition();
      PrayerTimes prayerTimes = PrayerTimes(
          Coordinates(location.altitude, location.longitude),
          today,
          CalculationParameters("", 0, 0),
          precision: true);
      allPrayersForMonth.addAll([
        mod.Prayer(time: prayerTimes.fajr,title: "الفجر",selected: false),
        mod.Prayer(time: prayerTimes.sunrise,title: "الشروق",selected: false),
        mod.Prayer(time: prayerTimes.dhuhr,title: "الظهر",selected: false),
        mod.Prayer(time: prayerTimes.asr,title: "العصر",selected: false),
        mod.Prayer(time: prayerTimes.maghrib,title: "المغرب",selected: false),
        mod.Prayer(time: prayerTimes.isha,title: "العشاء",selected: false),
      ]);

      return allPrayersForMonth;
    } catch (e) {
      print("hhhh: " + e.toString());
      return [];
    }
  }
}
