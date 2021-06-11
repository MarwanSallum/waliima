import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:waliima_app/controllers/product_controller.dart';
import 'package:waliima_app/size_config.dart';
import 'package:waliima_app/views/public_components/product_card.dart';
import 'package:waliima_app/views/public_components/section_title.dart';
import 'package:waliima_app/views/user/screens/home/skeleton_loading/product_skeleton_view.dart';

class PopularProducts extends GetView<ProductController> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(text: 'المنتجات', onTap: () {}),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: controller.obx(
            (state) => Row(
              children: [
                ...List.generate(
                  controller.products.length, (index) =>
                  ProductCard(
                  product: controller.products[index]),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(20),
                ),
              ],
            ),
            onLoading: ProductSkeletonView(),
          ),
        ),
      ],
    );
  }
}
