import 'package:news_app_ui_setup/models/item.dart';

import 'Category_card.dart';
import 'package:flutter/material.dart';

class CategoriesListVew extends StatelessWidget {
  const CategoriesListVew({
    super.key,
  });
  final List<ItemModel> items = const [
    ItemModel(name: 'Entertainment', image: 'assets/entertaiment.avif'),
    ItemModel(name: 'Science', image: 'assets/science.avif'),
    ItemModel(name: 'Sports', image: 'assets/sports.avif'),
    ItemModel(name: 'Business', image: 'assets/business.avif'),
    ItemModel(name: 'Technology', image: 'assets/general.avif'),
    ItemModel(name: 'Health', image: 'assets/health.avif'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: items.length,
          itemBuilder: (context, index) {
            return CategoryCard(
              itemModel: items[index],
            );
          }),
    );
  }
}
