import 'package:flutter/material.dart';

class buildCategoryItem extends StatelessWidget {
  final String imagePath;
  final String title;

  const buildCategoryItem({required this.imagePath, required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
        CircleAvatar(
          radius: 20,
          backgroundColor: Colors.lightBlue[50],
          child: ClipOval(
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
              width: 25,
              height: 25,
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(title, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),),
      ]
    );
  }
}