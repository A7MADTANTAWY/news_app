import 'package:flutter/material.dart';

class LatestNewsTitle extends StatelessWidget {
  final String title;

  const LatestNewsTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Divider(
          color: Colors.amber,
          thickness: 2,
          indent: 25,
          endIndent: 25,
        ),
      ],
    );
  }
}
