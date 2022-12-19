import 'dart:ui';

import 'package:flutter/material.dart';

class Cart {
  final String productName ;
  final String amount ;
  final Color color;
  final int price;

  const Cart ({
    required this.productName,
   required this.color,
    required this.amount, required this.price,
  });
}