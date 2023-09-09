import 'package:flutter/material.dart';
import '../models/news.dart';
import 'newsTile.dart';

class newsListView extends StatelessWidget {
  newsListView(this.news);

  List<News> news = [];
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: news.length,
        (context, index) {
          return NewsTile(news: news[index]);
        },
      ),
    );
  }
}
