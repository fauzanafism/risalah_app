// import 'package:http/http.dart' as http;
// import 'dart:convert';

// class Adzan {
//   String waktuSubuh;
//   String waktuZuhur;
//   String waktuAsar;
//   String waktuMagrib;
//   String waktuIsya;

//   Adzan(
//       {required this.waktuSubuh,
//       required this.waktuZuhur,
//       required this.waktuAsar,
//       required this.waktuMagrib,
//       required this.waktuIsya});

//   factory Adzan.getWaktu(Map<String, dynamic> object) {
//     return Adzan(
//       waktuSubuh: object['shubuh'],
//       waktuZuhur: object['dzuhur'],
//       waktuAsar: object['ashr'],
//       waktuMagrib: object['magrib'],
//       waktuIsya: object['isya'],
//     );
//   }

//     static Future<Adzan> getSebulan() async {
//     DateTime datetime = DateTime.now();
//     String bulan = datetime.month.toString();
//     String tahun = datetime.year.toString();
//     var apiURL = Uri.parse('https://raw.githubusercontent.com/lakuapik/jadwalsholatorg/master/adzan/bogor/' + tahun + '/' + bulan + '.json') ;

//     var apiResult = await http.get(apiURL);
//     var jsonObject = json.decode(apiResult.body);
//     var dataAdzan = (jsonObject as Map<String, dynamic>)['data'];

//     return Adzan.getWaktu(dataAdzan);
//   }
// }
