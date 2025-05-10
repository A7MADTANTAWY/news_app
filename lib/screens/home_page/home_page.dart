import 'package:flutter/material.dart';
import 'package:news_app/screens/home_page/widgets/categories_list.dart';
import 'package:news_app/core/widgets/latest_news_title.dart';
import 'package:news_app/core/widgets/news_list_view_builder.dart';

// ignore: must_be_immutable
class HomePage extends StatefulWidget {
  String category = 'general';

  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
            child: const LatestNewsTitle(
              title: 'General News',
            ),
          ),

          SliverToBoxAdapter(
            child: const SizedBox(height: 18),
          ),

          NewsListViewBuilder(
            category: widget.category,
          ),
          // Add your latest news widget here
        ],
      ),
    );
  }
}
