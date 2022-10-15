import 'package:flutter/material.dart';

class CartModel {
  String id;
  String name;
  String price;
  String color;
  int quantity;

  CartModel({
    required this.id,
    required this.name,
    required this.color,
    required this.price,
    required this.quantity,
  });

  CartModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        price = json['price'],
        color = json['color'],
        quantity = json['quantity'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['price'] = price;
    data['quantity'] = quantity;
    data['color'] = color;

    return data;
  }
}
