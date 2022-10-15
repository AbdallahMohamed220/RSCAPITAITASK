import 'dart:convert';

import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:rescpitalitask/controllers/app_bindings.dart';
import 'package:rescpitalitask/controllers/cart_controller.dart';
import 'package:rescpitalitask/models/cart.dart';
import 'package:rescpitalitask/screen/bottom_navigation.dart';
import 'package:rescpitalitask/theme/colors.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _cartController = Get.put(CartController());

  @override
  void initState() {
    super.initState();
    getCartData();
  }

  getCartData() async {
    final prefs = await SharedPreferences.getInstance();
    var cartSave = prefs.getString(MY_CART_KEY);
    print(cartSave);
    if (cartSave != null) {
      if (cartSave.isNotEmpty) {
        final listCart = jsonDecode(cartSave) as List<dynamic>;

        final listCartParsed =
            listCart.map((e) => CartModel.fromJson(e)).toList();

        if (listCartParsed.isNotEmpty) {
          _cartController.cart.value = listCartParsed;
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Rescpitali',
      debugShowCheckedModeBanner: false,
      initialBinding: AppBinding(),
      builder: BotToastInit(),
      navigatorObservers: [BotToastNavigatorObserver()],
      theme: ThemeData(
        fontFamily: 'Poppins',
        primaryColor: AppColors.primaryColor,
        scaffoldBackgroundColor: AppColors.whiteColor,
      ),
      home: const AppBottomNavigation(),
    );
  }
}
