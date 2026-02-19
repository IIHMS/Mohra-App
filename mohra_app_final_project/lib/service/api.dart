// import 'dart:convert';

// import 'package:http/http.dart' as http;
// import 'package:mohra_app_final_project/models/surah.dart';

// class Api {
//   String link = "http://api.alquran.cloud/v1/quran/quran-uthmani";

//  Future<List<Surahs>> getData() async{
//     var uri = Uri.parse(link);
//     var response = await http.get(uri);
//     var result = jsonDecode(response.body);

//     List<Surahs> surahsList = [];

//     for (var item in result["surahs"]) {
//       Surahs surah = Surahs.fromJson(item);
//       surahsList.add(surah);
//     }

//     return surahsList;
//   }
// }