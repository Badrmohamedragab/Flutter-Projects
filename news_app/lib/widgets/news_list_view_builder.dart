import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/news.dart';
import 'package:news_app_ui_setup/servises/news_service.dart';
import 'package:news_app_ui_setup/widgets/newsListView.dart';

class newsListViewBuilder extends StatefulWidget {
  final String category;

  const newsListViewBuilder({super.key, required this.category});

  @override
  State<newsListViewBuilder> createState() => _newsListViewBuilderState();
}

class _newsListViewBuilderState extends State<newsListViewBuilder> {
  var future;
  @override
  void initState() {
    // TODO: implement initState
    future = NewsService(Dio()).getNews(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<News>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return newsListView(
              snapshot.data!,
            );
          } else if (snapshot.hasError) {
            return const SliverToBoxAdapter(
              child: Text('OOps'),
            );
          } else {
            return const SliverToBoxAdapter(
              child: Center(child: CircularProgressIndicator()),
            );
          }
        });
  }
}
