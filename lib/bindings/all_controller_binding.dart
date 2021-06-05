import 'package:get/get.dart';
import 'package:waliima_app/controllers/auth_controller.dart';
import 'package:waliima_app/controllers/verification_controller.dart';

class AllControllerBinding implements Bindings{
  @override
  void dependencies() {
    Get.put<AuthController>(AuthController());
    Get.put<VerificationController>(VerificationController());
  }

}