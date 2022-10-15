import 'dart:convert';

import 'package:get/get.dart';
import 'package:rescpitalitask/models/cart.dart';
import 'package:shared_preferences/shared_preferences.dart';

const MY_CART_KEY = 'Cart';

class CartController extends GetxController {
  var cart = List<CartModel>.empty(growable: true).obs;

  sumCart() {
    return cart.isEmpty
        ? 0
        : cart
            .map((e) => double.parse(e.price) * e.quantity)
            .reduce((value, element) => value + element);
  }

  plusToCart(CartModel cartItem) {
    if (cart.isEmpty) {
      cart.add(cartItem);
    } else {
      if (isExistsInCart(cart, cartItem)) {
        for (var e in cart) {
          if (e.id == cartItem.id) {
            e.quantity++;
          }
        }
      } else {
        cart.add(cartItem);
      }
    }
    getQuantity(cartItem);
    saveDatabase();
  }

  minusToCart(CartModel cartItem) {
    if (getQuantity(cartItem) == 1) {
      cart.removeWhere((e) => e.id == cartItem.id);
      getQuantity(cartItem);
      saveDatabase();
    } else if (isExistsInCart(cart, cartItem)) {
      for (var e in cart) {
        if (e.id == cartItem.id) {
          e.quantity--;
        }
      }
      getQuantity(cartItem);
      saveDatabase();
    }
  }

  getQuantity(CartModel cartItem) {
    return cart.isEmpty
        ? 0
        : cart.map((e) {
            if (e.id == cartItem.id) {
              return e.quantity;
            } else {
              return 0;
            }
          }).reduce((value, element) => value + element);
  }

  bool isExistsInCart(RxList<CartModel> cart, CartModel cartItem) {
    return cart.isEmpty
        ? false
        : cart.any((e) => e.name == cartItem.name)
            ? true
            : false;
  }

  void saveDatabase() async {
    final prefs = await SharedPreferences.getInstance();

    print(cart);
    prefs.setString(MY_CART_KEY, jsonEncode(cart));
    var cartSave = prefs.getString(MY_CART_KEY);

    print(cartSave);
  }

  void clearCart() async {
    final prefs = await SharedPreferences.getInstance();

    prefs.remove(MY_CART_KEY);
  }
}
