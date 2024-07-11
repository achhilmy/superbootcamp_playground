part of 'services.dart';

class NewsApiServices {
  ///Api Key
  final apiKey = "c69173d515324c06b071c9cad44d0233";

  /// get Headline
  Future<List<NewsModel>> getNews() async {
    ///Url String
    final baseUrl = 'https://newsapi.org/v2/everything';

    ////Header
    Map<String, String> queryParams = {
      "q": "apple",
      "from": "2024-01-27",
      "to": "2024-01-27",
      "sortBy": "popularity",
      "apiKey": "c69173d515324c06b071c9cad44d0233"
    };

    String queryString = Uri(queryParameters: queryParams).query;

    String apiUrl = "$baseUrl?$queryString";

    final res = await http.get(Uri.parse(apiUrl));

    if (res.statusCode == 200) {
      final List result = jsonDecode(res.body)['articles'];
      print(result);
      return result.map((e) => NewsModel.fromJson(e)).toList();
    } else {
      throw Exception(res.reasonPhrase);
    }
  }
}
