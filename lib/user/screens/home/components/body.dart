import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:waliima_app/components/section_title.dart';
import 'package:waliima_app/constants.dart';
import 'package:waliima_app/size_config.dart';
import 'package:waliima_app/user/screens/home/components/categories.dart';
import 'package:waliima_app/user/screens/home/components/discount_banner.dart';
import 'package:waliima_app/user/screens/home/components/home_header.dart';
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
              SectionTitle(
                  text: 'المنتجات',
                  onTap: (){}
              ),
              ProductCard(),
            ],
          ),
        ),
    );
  }
}

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key key,
    this.width,
    this.aspectRetion,
  }) : super(key: key);
  final double width, aspectRetion;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportionateScreenWidth(140),
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 1.02,
            child: Container(
              padding: EdgeInsets.all(getProportionateScreenWidth(20)),
              decoration: BoxDecoration(
                color: kSecondaryColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset('assets/images/sheep.png'),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(8)),
            child: Text(
              'غنم حري عجل - مزارع المرعى جبلي',
              textDirection: TextDirection.rtl,
              style: TextStyle(
                color: Colors.black),
              maxLines: 2,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                      'ريال',
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(12),
                      fontWeight: FontWeight.w600,
                      color: kPrimaryColor,
                    ),
                  ),
                  SizedBox(width: getProportionateScreenWidth(10),),
                  Text(
                    '1050',
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(12),
                      fontWeight: FontWeight.w600,
                      color: kPrimaryColor,
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.all(getProportionateScreenWidth(8)),
                width: getProportionateScreenWidth(28),
                height: getProportionateScreenWidth(28),
                decoration: BoxDecoration(
                  color: kSecondaryColor.withOpacity(0.1),
                  shape: BoxShape.circle,
                ),
                child: SvgPicture.asset('assets/icons/add-to-cart.svg'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}













