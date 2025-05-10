import 'package:flutter/material.dart';
import 'package:news_app/core/models/category_model.dart';
import 'package:news_app/screens/category_page.dart/widgets/category_card.dart';
import 'package:news_app/core/widgets/latest_news_title.dart';
import 'package:news_app/core/widgets/news_list_view_builder.dart';

class CategoryPage extends StatelessWidget {
  final CategoryModel categoryModel;

  const CategoryPage({super.key, required this.categoryModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF121212),
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: Colors.transparent,
        scrolledUnderElevation: 0,
        centerTitle: true,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'News',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 10),
            Text(
              "Cloud",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.amber,
              ),
            ),
          ],
        ),
      ),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: const SizedBox(height: 8),
          ),
          SliverToBoxAdapter(
            child: CategoryCard(
                title: categoryModel.title, image: categoryModel.image),
          ),
          SliverToBoxAdapter(
            child: const SizedBox(height: 4),
          ),
          SliverToBoxAdapter(
            child: LatestNewsTitle(
              title: '${categoryModel.title} News',
            ),
          ),
          NewsListViewBuilder(
            category: categoryModel.title,
          ),
        ],
      ),
    );
  }
}
