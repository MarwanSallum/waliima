import 'package:get/get.dart';
import 'package:waliima_app/controllers/auth_controller.dart';
import 'package:waliima_app/controllers/product_controller.dart';
import 'package:waliima_app/controllers/public_controller.dart';
import 'package:waliima_app/controllers/special_offer_controller.dart';
import 'package:waliima_app/controllers/verification_controller.dart';

class AllControllerBinding implements Bindings{
  @override
  void dependencies() {
    Get.put<PublicController>(PublicController());
    Get.put<AuthController>(AuthController());
    Get.put<VerificationController>(VerificationController());
    Get.put<ProductController>(ProductController());
    Get.put<SpecialOfferController>(SpecialOfferController());
  }

}