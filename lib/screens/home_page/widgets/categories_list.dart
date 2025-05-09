import 'package:flutter/material.dart';
import 'package:news_app/core/models/category_model.dart';
import 'package:news_app/screens/home_page/widgets/category_card.dart';

class CategoriesList extends StatelessWidget {
  final List<CategoryModel> categories = const [
    CategoryModel(
      title: 'Health',
      image: 'assets/health.avif',
    ),
    CategoryModel(
      title: 'Business',
      image: 'assets/business.avif',
    ),
    CategoryModel(
      title: 'Entertainment',
      image: 'assets/entertainment.avif',
    ),
    CategoryModel(
      title: 'Science',
      image: 'assets/science.avif',
    ),
    CategoryModel(
      title: 'Sports',
      image: 'assets/sports.avif',
    ),
  ];
  const CategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return CategoryCard(
            category: categories[index],
          );
        },
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
