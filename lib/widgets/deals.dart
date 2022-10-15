import 'package:flutter/material.dart';
import 'package:rescpitalitask/theme/colors.dart';

class Deals extends StatelessWidget {
  const Deals({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(
              left: 16.0,
              right: 16.0,
              bottom: 20.0,
            ),
            child: Container(
              padding: const EdgeInsets.symmetric(
                vertical: 4.0,
                horizontal: 8,
              ),
              child: Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            height: 90,
                            width: 90,
                            decoration: BoxDecoration(
                              color: const Color(0xffD7D7D7),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 2,
                          left: 2,
                          child: Container(
                            height: 20,
                            width: 20,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.favorite,
                              color: Colors.red,
                              size: 15.0,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Summer Sun Ice Cream Pack',
                        style: TextStyle(
                          color: Color(0xff474749),
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      const Text(
                        'Pieces 5',
                        style: TextStyle(
                          color: Color(0xff474749),
                          fontSize: 11,
                        ),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.location_on_outlined,
                            color: AppColors.primaryColor,
                            size: 13,
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            '15 Minutes Away',
                            style: TextStyle(
                              color: Color(0xff474749),
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        children: const [
                          Text(
                            '\$12.00',
                            style: TextStyle(
                              color: AppColors.primaryColor,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 18.0,
                          ),
                          Text(
                            '\$12.00',
                            style: TextStyle(
                              color: AppColors.greyColor,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
