import 'package:flutter/material.dart';
import 'package:news_app/core/models/news_model.dart';

class NewsCard extends StatelessWidget {
  final ArticleModel article;
  const NewsCard({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Color(0xFF1E1E1E),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(
                10,
              ),
            ),
            child: Image.network(
              height: 200,
              width: double.infinity,
              article.urlToImage ?? 'https://via.placeholder.com/150',
              fit: BoxFit.cover,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  article.source?.name ?? 'Source',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  article.title ?? 'Title',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
