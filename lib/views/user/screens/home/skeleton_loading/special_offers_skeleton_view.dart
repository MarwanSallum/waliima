import 'package:flutter/material.dart';
import 'package:waliima_app/size_config.dart';
import 'package:waliima_app/views/public_components/skeleton_container.dart';

class SpecialOffersSkeletonView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: SizedBox(
        width: getProportionateScreenWidth(300),
        height: getProportionateScreenWidth(100),
        child: Row(
          children: [
            SkeletonContainer(
              width: getProportionateScreenWidth(200),
              height: getProportionateScreenHight(140),
              borderRadiusCircular: 20,
            ),
            SizedBox(width: getProportionateScreenHight(10),),
            SkeletonContainer(
              width: getProportionateScreenWidth(90),
              height: getProportionateScreenHight(140),
              borderRadiusCircular: 20,
            ),
          ],
        ),
      ),

    );
  }
}
