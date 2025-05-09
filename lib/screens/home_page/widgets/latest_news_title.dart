import 'package:flutter/material.dart';

class LatestNewsTitle extends StatelessWidget {
  const LatestNewsTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        const Padding(
          padding: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Latest News',
                style: TextStyle(
                  fontSize: 28,
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
