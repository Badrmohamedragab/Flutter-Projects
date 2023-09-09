import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/widgets/news_list_view_builder.dart';

class CategoryView extends StatelessWidget {
  final String Category;
  const CategoryView({super.key, required this.Category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [newsListViewBuilder(category: Category)],
      ),
    );
  }
}
