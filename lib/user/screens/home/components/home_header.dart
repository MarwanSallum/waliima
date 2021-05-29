import 'package:flutter/material.dart';
import 'package:waliima_app/components/icon_btn_with_counter.dart';
import 'package:waliima_app/components/search_field.dart';
import 'package:waliima_app/size_config.dart';

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
            onTap: (){},
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