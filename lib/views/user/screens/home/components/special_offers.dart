import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:waliima_app/controllers/special_offer_controller.dart';
import 'package:waliima_app/models/special_offer.dart';
import 'package:waliima_app/size_config.dart';
import 'package:waliima_app/views/public_components/section_title.dart';
import 'package:waliima_app/views/user/screens/home/skeleton_loading/special_offers_skeleton_view.dart';

class SpecialOffers extends GetView<SpecialOfferController> {
  const SpecialOffers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          text: 'الأكثر مبيعا',
          onTap: () {},
        ),
        SizedBox(
          height: getProportionateScreenWidth(20),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: controller.obx(
            (state) => Row(
              children: [
                ...List.generate(
                  controller.specialOffers.length,
                  (index) => SpecialOfferCard(
                    specialOffer: controller.specialOffers[index],
                  ),
                ),
              ],
            ),
            onLoading: SpecialOffersSkeletonView(),
          ),
        ),
      ],
    );
  }
}

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({
    this.onTap,
    required this.specialOffer,
  });
  final SpecialOffer specialOffer;
  final GestureTapCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
        child: SizedBox(
          width: getProportionateScreenWidth(242),
          height: getProportionateScreenWidth(100),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.network(
                  specialOffer.image!,
                  fit: BoxFit.cover,
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xFF343434).withOpacity(0.12),
                          Color(0xFF343434).withOpacity(0.8),
                        ]),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(20),
                      vertical: getProportionateScreenWidth(15),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              specialOffer.price!.toString(),
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(
                              width: getProportionateScreenWidth(10),
                            ),
                            Text(
                              'ريال',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        Text(
                          specialOffer.title!,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: getProportionateScreenWidth(18),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
