import 'package:flutter/material.dart';
import 'package:waliima_app/size_config.dart';
import 'package:waliima_app/views/public_components/icon_btn_with_counter.dart';
import 'package:waliima_app/views/public_components/search_field.dart';
import 'package:waliima_app/views/user/screens/cart/cart_screen.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchField(),
          IconBtnWithCounter(
            svgIcon: "assets/icons/shopping-cart.svg",
            onTap: (){
              Navigator.pushNamed(context, CartScreen.routeName);
            },
          ),
          IconBtnWithCounter(
            svgIcon: "assets/icons/bell.svg",
            numberOfItem: 3,
            onTap: (){},
          ),
        ],
      ),
    );
  }
}