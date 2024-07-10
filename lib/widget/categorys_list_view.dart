import 'package:fifth2_project/model/category_model.dart';
import 'package:fifth2_project/widget/category_card.dart';
import 'package:flutter/material.dart';

class CategorysListView extends StatelessWidget {
  const CategorysListView({
    super.key,
  });
  final List<CategoryModel> categories = const [
    CategoryModel(categoryName: 'Buisness', image: 'assets/buisness.jpeg'),
    CategoryModel(categoryName: 'Technolgy', image: 'assets/technology.jpeg'),
    CategoryModel(categoryName: 'Health', image: 'assets/health.avif'),
    CategoryModel(
        categoryName: 'Entertaiment', image: 'assets/entertaiment.avif'),
    CategoryModel(categoryName: 'General', image: 'assets/general.avif'),
    CategoryModel(categoryName: 'Sciencs', image: 'assets/science.jpg'),
    CategoryModel(categoryName: 'Sports', image: 'assets/sports.avif'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return CardNews(
              category: categories[index],
            );
          }),
    );
  }
}
