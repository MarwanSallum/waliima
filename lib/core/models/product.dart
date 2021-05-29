import 'package:flutter/material.dart';

class Product{
  final String title;
  final String image;
  final double price;
  final bool isSpecial;
  Product({
    @required this.title,
    @required this.image,
    @required this.price,
    this.isSpecial = false,
  });
}