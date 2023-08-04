import 'dart:convert';
import 'package:aaseeb_app/Models/prayer.dart';



class PrayerDate {
  PrayerDate(this.date, this.prayers);

  List<Prayer> prayers;
  String date;

  factory PrayerDate.fromJson(Map<String, dynamic> json) {
    List<Prayer> prayers = [];
    (json["timings"] as Map<String, dynamic>).forEach((key, value) {
      prayers.add(Prayer(value, key, false));
    });
    var dateGregorianModel = (json["date"] as Map<String, dynamic>)["gregorian"] as Map<String, dynamic>;
    return PrayerDate(dateGregorianModel["date"], prayers);
  }

  factory PrayerDate.fromJsonPrf(Map<String, dynamic> value) {
    List<Prayer> prayers = [];
    prayers.add(Prayer(value["time"], value["title"], value["selected"]));
    return PrayerDate(value["date"], prayers);
  }

  Map<String, dynamic> toJson() => {
        'prayers': jsonEncode(prayers, toEncodable: (e) => (e as Prayer).toJson()),
        'date': date,
      };
}
