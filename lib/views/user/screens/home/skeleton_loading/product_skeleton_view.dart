import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:skeleton_text/skeleton_text.dart';
import 'package:waliima_app/constants.dart';
import 'package:waliima_app/size_config.dart';
import 'package:waliima_app/views/public_components/skeleton_container.dart';

class ProductSkeletonView extends StatelessWidget {
  const ProductSkeletonView({
    Key? key,
    this.width = 140,
    this.aspectRatio = 1.02,
  }) : super(key: key);
  final double width, aspectRatio;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildSkeletonCard(),
        buildSkeletonCard(),
      ],
    );
  }

  Padding buildSkeletonCard() {
    return Padding(
    padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
    child: SizedBox(
      width: getProportionateScreenWidth(width),
      child: Column(
        children: [
          SkeletonContainer(
            width: getProportionateScreenWidth(140),
            height: getProportionateScreenHight(120),
            borderRadiusCircular: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(8),
              vertical: getProportionateScreenWidth(8),
            ),
            child: SkeletonContainer(
              width: getProportionateScreenWidth(90),
              height: getProportionateScreenHight(15),
              borderRadiusCircular: 20,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SkeletonContainer(
                width: getProportionateScreenWidth(70),
                height: getProportionateScreenHight(15),
                borderRadiusCircular: 20,
              ),
              SkeletonContainer(
                height: getProportionateScreenHight(30),
                width: getProportionateScreenWidth(30),
                borderRadiusCircular: 30,
              ),
            ],
          ),
        ],
      ),
    ),
  );
  }
}


