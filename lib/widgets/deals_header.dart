import 'package:flutter/material.dart';

class DealsHeader extends StatelessWidget {
  const DealsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16.0,
        right: 16.0,
        bottom: 10.0,
      ),
      child: Row(
        children: const [
          Text(
            'Deals of the day',
            style: TextStyle(
              fontSize: 13.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
