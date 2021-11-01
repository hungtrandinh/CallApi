import 'package:dio/dio.dart';
import 'package:download_image/model/data.dart';

final String url = "https://randomuser.me/api/?results=100";
Future<List<Results>?> getdata() async {
  try {
    var reponse = await Dio().get(url);
    if (reponse.statusCode == 200) {
      print(reponse);
      return (reponse.data['results'] as List)
          .map((e) => Results.fromJson(e))
          .toList();
    } else {
      print("erros");
    }
  } catch (e) {
    print(e);
  }
}
