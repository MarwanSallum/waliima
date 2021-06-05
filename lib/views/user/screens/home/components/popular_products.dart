import 'package:flutter/material.dart';
import 'package:waliima_app/models/product.dart';
import 'package:waliima_app/size_config.dart';
import 'package:waliima_app/views/public_components/product_card.dart';
import 'package:waliima_app/views/public_components/section_title.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
            text: 'المنتجات',
            onTap: (){}
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                demo.length, (index) => ProductCard(
                  product: demo[index]),
              ),
              SizedBox(width: getProportionateScreenWidth(20),),
            ],
          ),
        ),
      ],
    );
  }
}