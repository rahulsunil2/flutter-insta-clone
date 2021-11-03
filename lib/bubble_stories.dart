import 'package:flutter/material.dart';

class BubbleStories extends StatelessWidget {
  final String text;
  final String image;

  BubbleStories({required this.text, required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset(
                  'assets/$image.png',
                  fit: BoxFit.contain,
                  height: 10,
                  width: 10,
                ),
              ),
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[300],
              )),
          const SizedBox(
            height: 10,
          ),
          Text(text)
        ],
      ),
    );
  }
}
