import 'package:flutter/material.dart';
import 'package:news_app/screens/home_page/widgets/news_card.dart';

class NewsList extends StatelessWidget {
  const NewsList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return const NewsCard();
        },
        childCount: 10, // Replace with the number of news items you have
      ),
    );
  }
}
