import 'package:dio/dio.dart';

import '../models/news.dart';

class NewsService {
  final Dio dio;
  NewsService(this.dio);

  Future<List<News>> getNews({required String category}) async {
    var response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=52b9105258894dcdb5b682e41dddcd4f&category=$category');
    print("states code =  ${response.statusCode}");

    Map<String, dynamic> jsonData = response.data;
    List<dynamic> articles = jsonData['articles'];
    List<News> articlesList = [];

    for (var article in articles) {
      News news = News(
        image: article['urlToImage'],
        aboveNews: article['title'],
        downNews: article['description'],
      );
      articlesList.add(news);
    }
    return articlesList;
  }
}
