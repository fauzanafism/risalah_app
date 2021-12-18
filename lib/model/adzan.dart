import 'package:adhan/adhan.dart';

class Azan {
  static String getTime() {
    final Coordinates kordinat =
        Coordinates(-6.614344721616826, 106.75506355228447);
    final params = CalculationMethod.muslim_world_league.getParameters();
    final DateTime now = DateTime.now();
    final prayerTimes = PrayerTimes.today(kordinat, params);
    if (now.isBefore(prayerTimes.fajr))
      if (prayerTimes.fajr.difference(now).inHours >= 1)
        return prayerTimes.fajr.difference(now).inHours.toString() + ' jam menjelang waktu Subuh';
      else
        return prayerTimes.fajr.difference(now).inMinutes.toString() + ' menit menjelang waktu Subuh';
    else if (now.isBefore(prayerTimes.dhuhr))
      if (prayerTimes.dhuhr.difference(now).inHours >= 1)
        return prayerTimes.dhuhr.difference(now).inHours.toString() + ' jam menjelang waktu Zuhur';
      else
        return prayerTimes.dhuhr.difference(now).inMinutes.toString() + ' menit menjelang waktu Zuhur';
    else if (now.isBefore(prayerTimes.asr))
      if (prayerTimes.asr.difference(now).inHours >= 1)
        return prayerTimes.asr.difference(now).inHours.toString() + ' jam menjelang waktu Asar';
      else
        return prayerTimes.asr.difference(now).inMinutes.toString() + ' menit menjelang waktu Asar';
    else if (now.isBefore(prayerTimes.maghrib))
      if (prayerTimes.maghrib.difference(now).inHours >= 1)
        return prayerTimes.maghrib.difference(now).inHours.toString() + ' jam menjelang waktu Magrib';
      else
        return prayerTimes.maghrib.difference(now).inMinutes.toString() + ' menit menjelang waktu Magrib';
    else if (now.isBefore(prayerTimes.isha))
      if (prayerTimes.isha.difference(now).inHours >= 1)
        return prayerTimes.isha.difference(now).inHours.toString() + ' jam menjelang waktu Isya';
      else
        return prayerTimes.isha.difference(now).inMinutes.toString() + ' menit menjelang waktu Isya';
    else
      return "";
  }
}
