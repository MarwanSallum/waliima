import 'package:flutter/material.dart';
import 'package:waliima_app/contracts/model.dart';

class Product extends Model{
  final int id;
  final String title;
  final String image;
  final double price;
  final bool isSpecial;
  final bool isAddedtoCart;
  Product({
    this.id,
    @required this.title,
    @required this.image,
    @required this.price,
    this.isAddedtoCart = false,
    this.isSpecial = false,
  });
}

List<Product> demo = [
  Product(
      id: 1,
      title: 'غنم حري عجل - مزارع المرعى (جبلي)',
      image: 'assets/images/sheep.png',
      price: 1050,
    isAddedtoCart: false,
  ),
  Product(
      id: 2,
      title: 'غنم تيس عجل - مزارع المرعى (جبلي)',
      image: 'assets/images/sheep2.png',
      price: 980,
    isAddedtoCart: true,
  ),
  Product(
      id: 3,
      title: 'غنم سواكني - مزارع المرعى (مرعى)',
      image: 'assets/images/sheep3.png',
      price: 480,
    isAddedtoCart: false,
  ),
];