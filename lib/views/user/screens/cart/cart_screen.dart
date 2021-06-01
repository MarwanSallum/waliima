import 'package:flutter/material.dart';
import 'package:waliima_app/views/user/screens/cart/components/cart_body.dart';
import 'package:waliima_app/views/user/screens/cart/components/check_out_card.dart';


class CartScreen extends StatelessWidget {
  static String routeName = '/cart';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'سلة المشتريات',
          style: TextStyle(fontFamily: 'ElMessiri', color: Colors.black),
        ),
      ),
      body: CartBody(),
      bottomNavigationBar: CheckOutCard(),
    );
  }
}


