import 'package:flutter/material.dart';
import 'package:waiter_app/model/orderItem.model.dart';

class Order {
  final int id;
  final String pass;
  final List<OrderItem> items;
  final String totalPrice;
  final bool finished;

  Order({
    @required this.id,
    @required this.pass,
    @required this.items,
    @required this.totalPrice,
    this.finished,
  });

  factory Order.fromJson(Map<String, dynamic> json) {
    return Order(
        id: json['id'],
        pass: json['foodName'],
        items: json['price'],
        totalPrice: json['quantity'],
        finished: json['finished']);
  }
}
