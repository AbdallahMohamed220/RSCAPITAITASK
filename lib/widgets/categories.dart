import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rescpitalitask/controllers/cart_controller.dart';
import 'package:rescpitalitask/models/cart.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  final List _categories = [
    'Stack',
    'Fruits',
    'Vegetables',
    'Meat',
    'Fish',
    'Dairy',
    'Bakery',
    'Drinks',
    'Snacks',
    'Frozen',
    'Spices',
    'Others',
  ];
  final List _categoriesColors = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.purple,
    Colors.orange,
    Colors.pink,
    Colors.brown,
    Colors.teal,
    Colors.cyan,
    Colors.indigo,
    Colors.lime,
  ];

  final _cartController = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _categories.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(
              left: 12.0,
              right: 8.0,
              bottom: 15.0,
            ),
            child: Column(
              children: [
                InkWell(
                  onTap: () async {
                    final hexColor =
                        '0x' + _categoriesColors[index].value.toRadixString(16);
                    var cartItem = CartModel(
                      id: index.toString(),
                      name: _categories[index],
                      price: "100",
                      color: hexColor,
                      quantity: 1,
                    );

                    if (_cartController.isExistsInCart(
                        _cartController.cart, cartItem)) {
                      var productUpdate = _cartController.cart
                          .firstWhere((e) => e.id == index.toString());
                      productUpdate.quantity += 1;
                      _cartController.cart.refresh();
                    } else {
                      _cartController.cart.add(cartItem);
                      _cartController.cart.refresh();
                      _cartController.saveDatabase();
                      BotToast.showText(
                        text: 'Product Added To Cart',
                      );
                    }
                  },
                  child: Container(
                    height: 50.0,
                    width: 50.0,
                    decoration: BoxDecoration(
                      color: _categoriesColors[index],
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8.0,
                ),
                Text(
                  _categories[index],
                  style: const TextStyle(
                    color: Color(0xff474749),
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
