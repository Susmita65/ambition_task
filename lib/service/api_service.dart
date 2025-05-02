import 'package:demo_of_provider/provider/model/articles.dart';
import 'package:dio/dio.dart';

class ApiService {
  Future<List<Articles>> fetchData() async {
    try {
      final response = await Dio().get(
        "https://newsapi.org/v2/everything",

        queryParameters: {
          "q": "apple",
          "from": "today",
          "to": "today",
          "sortBy": "popularity",
          "apiKey": "8c0b445a65004d3ca885197d8fd6772c",
        },
      );

      if (response.statusCode == 200) {
        print("API Call Successfull");
        print("Response:${response.data}");
        List<dynamic> articlesJson = response.data['articles'];
        return articlesJson.map((json) => Articles.fromJson(json)).toList();
      } else {
        throw Exception(
          "Failed to load data.Status Code:${response.statusCode}",
        );
      }
    } catch (e) {
      print("An error occured:$e");
      throw Exception("An error occur while fetching data:$e");
    }
  }
}
