import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:waliima_app/components/product_card.dart';
import 'package:waliima_app/components/section_title.dart';
import 'package:waliima_app/core/models/product.dart';
import 'package:waliima_app/size_config.dart';
import 'package:waliima_app/user/screens/home/components/categories.dart';
import 'package:waliima_app/user/screens/home/components/discount_banner.dart';
import 'package:waliima_app/user/screens/home/components/home_header.dart';
import 'package:waliima_app/user/screens/home/components/popular_products.dart';
import 'package:waliima_app/user/screens/home/components/special_offers.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: getProportionateScreenWidth(20),),
              HomeHeader(),
              SizedBox(height: getProportionateScreenWidth(30),),
              DiscountBanner(),
              SizedBox(height: getProportionateScreenWidth(30),),
              Categories(),
              SizedBox(height: getProportionateScreenWidth(30),),
              SpecialOffers(),
              SizedBox(height: getProportionateScreenWidth(30),),
              PopularProducts(),
              SizedBox(height: getProportionateScreenWidth(30),),
            ],
          ),
        ),
    );
  }
}

















