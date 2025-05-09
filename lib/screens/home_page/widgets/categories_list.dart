import 'package:flutter/material.dart';
import 'package:news_app/core/models/category_model.dart';
import 'package:news_app/screens/home_page/widgets/category_card.dart';

class CategoriesList extends StatelessWidget {
  final List<CategoryModel> categories = const [
    CategoryModel(
      title: 'General',
      image: 'assets/general.avif',
    ),
    CategoryModel(
      title: 'Health',
      image: 'assets/health.avif',
    ),
    CategoryModel(
      title: 'Sports',
      image: 'assets/Sports.jpg',
    ),
    CategoryModel(
      title: 'Business',
      image: 'assets/business.avif',
    ),
    CategoryModel(
      title: 'Technology',
      image: 'assets/Technology.jpg',
    ),
    CategoryModel(
      title: 'Entertainment',
      image: 'assets/entertaiment.jpg',
    ),
    CategoryModel(
      title: 'Science',
      image: 'assets/science.avif',
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
