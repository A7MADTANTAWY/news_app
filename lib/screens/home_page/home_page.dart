import 'package:flutter/material.dart';
import 'package:news_app/screens/home_page/widgets/categories_list.dart';
import 'package:news_app/screens/home_page/widgets/latest_news_title.dart';
import 'package:news_app/screens/home_page/widgets/news_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF121212),
      appBar: AppBar(
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
            child: const CategoriesList(),
          ),

          SliverToBoxAdapter(
            child: const SizedBox(height: 4),
          ),

          SliverToBoxAdapter(
            child: const LatestNewsTitle(),
          ),

          SliverToBoxAdapter(
            child: const SizedBox(height: 18),
          ),

          NewsList(),
          // Add your latest news widget here
        ],
      ),
    );
  }
}
