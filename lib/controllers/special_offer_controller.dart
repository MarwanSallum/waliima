import 'package:get/get.dart';
import 'package:waliima_app/models/special_offer.dart';
import 'package:waliima_app/services/special_offer_service.dart';

class SpecialOfferController extends GetxController with StateMixin{
  final SpecialOfferService specialOfferService = SpecialOfferService();
  RxList<SpecialOffer> specialOffers = RxList<SpecialOffer>();

  @override
  void onInit() {
    specialOfferService.getAll().then((value) {
      specialOffers.addAll(value);
      change(specialOffers, status: RxStatus.success());
    });
    super.onInit();
  }
}