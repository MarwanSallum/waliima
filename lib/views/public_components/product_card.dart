import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:waliima_app/constants.dart';
import 'package:waliima_app/models/product.dart';
import 'package:waliima_app/size_config.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    this.width = 140,
    this.aspectRatio = 1.02,
    required this.product,
  }) : super(key: key);
  final double width, aspectRatio;
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: SizedBox(
        width: getProportionateScreenWidth(width),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: aspectRatio,
              child: Container(
                padding: EdgeInsets.all(getProportionateScreenWidth(20)),
                decoration: BoxDecoration(
                  color: kSecondaryColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image.asset(product.image),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(8),
                vertical: getProportionateScreenWidth(8),
              ),
              child: Text(
                product.title,
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
                      product.price.toString(),
                      style: TextStyle(
                        fontSize: getProportionateScreenWidth(12),
                        fontWeight: FontWeight.w600,
                        color: kPrimaryColor,
                      ),
                    ),
                  ],
                ),
                InkWell(
                  onTap: (){
                    //TODO:: Add Product to Cart
                  },
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                    padding: EdgeInsets.all(getProportionateScreenWidth(8)),
                    width: getProportionateScreenWidth(32),
                    height: getProportionateScreenWidth(32),
                    decoration: BoxDecoration(
                      color: product.isAddedtoCart
                          ? kPrimaryColor.withOpacity(0.15)
                          : kSecondaryColor.withOpacity(0.1),
                      shape: BoxShape.circle,
                    ),
                    //TODO:: when product added to cart Change icon color to Primary Color
                    child: SvgPicture.asset(
                        'assets/icons/add-to-cart.svg',
                        color: product.isAddedtoCart
                            ? Color(0xFFFF4848)
                            : Color(0xFFDBDEE4),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}