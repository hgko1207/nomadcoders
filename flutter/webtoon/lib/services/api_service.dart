import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:webtoon/models/webtoon_model.dart';

class ApiService {
  final String baseUrl = "https://webtoon-crawler.nomadcoders.workers.dev";
  final String today = "today";

  Future<List<WebtoonModel>> getTodayToons() async {
    List<WebtoonModel> webtoonInstances = [];
    final url = Uri.parse('$baseUrl/$today');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final List<dynamic> wentoons = jsonDecode(response.body);
      for (var wentoon in wentoons) {
        webtoonInstances.add(WebtoonModel.fromJson(wentoon));
      }
      return webtoonInstances;
    }
    throw Error();
  }
}
