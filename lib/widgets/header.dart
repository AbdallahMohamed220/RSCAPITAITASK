import 'package:flutter/material.dart';
import 'package:rescpitalitask/theme/colors.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 20.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/icons/location.png',
                color: AppColors.primaryColor,
              ),
              Positioned.fill(
                child: Row(
                  children: const [
                    Icon(
                      Icons.location_on_outlined,
                      color: AppColors.whiteColor,
                    ),
                    Text(
                      'Mustafa St.',
                      style: TextStyle(
                        color: AppColors.whiteColor,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: AppColors.whiteColor,
                shape: BoxShape.circle,
                border: Border.all(
                  color: AppColors.circleColor,
                  width: 2,
                ),
              )),
        ],
      ),
    );
  }
}
