import 'package:flutter/material.dart';
import 'package:rescpitalitask/screen/cart.dart';
import 'package:rescpitalitask/screen/favorite.dart';
import 'package:rescpitalitask/screen/home.dart';
import 'package:rescpitalitask/screen/notification.dart';
import 'package:rescpitalitask/theme/colors.dart';

class AppBottomNavigation extends StatefulWidget {
  const AppBottomNavigation({super.key});

  @override
  State<AppBottomNavigation> createState() => _AppBottomNavigationState();
}

class _AppBottomNavigationState extends State<AppBottomNavigation> {
  int _selectedIndex = 0;

  final List<Widget> _screens = <Widget>[
    const HomeScreen(),
    const NotificationScreen(),
    const FavoriteScreen(),
    const CartScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      floatingActionButton: FloatingActionButton(
        foregroundColor: AppColors.primaryColor,
        backgroundColor: AppColors.primaryColor,
        onPressed: () {},
        tooltip: 'Increment',
        elevation: 4.0,
        child: Image.asset(
          'assets/icons/float.png',
          color: AppColors.whiteColor,
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: AppColors.bottomNavigationColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: IconButton(
                icon: Icon(
                  Icons.home_outlined,
                  color: _selectedIndex == 0
                      ? AppColors.primaryColor
                      : AppColors.greyColor,
                ),
                onPressed: () {
                  setState(() {
                    _selectedIndex = 0;
                  });
                },
              ),
            ),
            Expanded(
              child: IconButton(
                icon: Icon(
                  Icons.notifications_outlined,
                  color: _selectedIndex == 1
                      ? AppColors.primaryColor
                      : AppColors.greyColor,
                ),
                onPressed: () {
                  setState(() {
                    _selectedIndex = 1;
                  });
                },
              ),
            ),
            const Expanded(child: Text('')),
            Expanded(
              child: IconButton(
                icon: Icon(
                  Icons.favorite_border,
                  color: _selectedIndex == 2
                      ? AppColors.primaryColor
                      : AppColors.greyColor,
                ),
                onPressed: () {
                  setState(() {
                    _selectedIndex = 2;
                  });
                },
              ),
            ),
            Expanded(
              child: IconButton(
                icon: Icon(
                  Icons.shopping_cart_outlined,
                  color: _selectedIndex == 3
                      ? AppColors.primaryColor
                      : AppColors.greyColor,
                ),
                onPressed: () {
                  setState(() {
                    _selectedIndex = 3;
                  });
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
