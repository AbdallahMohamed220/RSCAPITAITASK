import 'package:flutter/material.dart';

class CategoryHeader extends StatelessWidget {
  const CategoryHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16.0,
        right: 16.0,
        bottom: 15.0,
        top: 8,
      ),
      child: Row(
        children: const [
          Text(
            'Explore by Category',
            style: TextStyle(
              fontSize: 13.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Spacer(),
          Text(
            'See All(36)',
            style: TextStyle(
              fontSize: 11.0,
              fontWeight: FontWeight.normal,
              color: Color(0xff929294),
            ),
          ),
        ],
      ),
    );
  }
}
