import 'package:flutter/material.dart';
import 'package:waliima_app/constants.dart';
import 'package:waliima_app/models/cart.dart';
import 'package:waliima_app/size_config.dart';

class CartItemCard extends StatelessWidget {
  const CartItemCard({
    Key? key,
    required this.cart,
  }) : super(key: key);
  final Cart cart;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              cart.product!.title,
              style: TextStyle(fontSize: 16, color: Colors.black),
              maxLines: 2,
            ),
            Row(
              children: [
                Text('ريال', style: TextStyle(color: kPrimaryColor),),
                SizedBox(width: getProportionateScreenWidth(5),),
                Text('${cart.product!.price}', style: TextStyle(color: kPrimaryColor),),
                SizedBox(width: getProportionateScreenWidth(10),),
                Text('X 2'),
              ],
            ),
          ],
        ),
        SizedBox(width: getProportionateScreenWidth(40),),
        SizedBox(
          width: getProportionateScreenWidth(88),
          child: AspectRatio(
            aspectRatio: 0.88,
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0xFFF5F6F9),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(cart.product!.image),
            ),
          ),
        ),
      ],
    );
  }
}