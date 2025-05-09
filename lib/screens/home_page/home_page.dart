import 'package:flutter/material.dart';
import 'package:news_app/screens/home_page/widgets/categories_list.dart';
import 'package:news_app/screens/home_page/widgets/latest_news_title.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'News',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
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
      body: ListView(children: [
        const CategoriesList(),

        const LatestNewsTitle(),
        // Add your latest news widget here
      ]),
    );
  }
}
