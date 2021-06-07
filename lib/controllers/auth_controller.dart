import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';
import 'package:waliima_app/controllers/public_controller.dart';
import 'package:waliima_app/services/auth_service.dart';
import 'package:waliima_app/views/user/screens/otp/otp_screen.dart';

class AuthController extends GetxController {
  final AuthService authService = AuthService();
  final GlobalKey<FormState> authFormKey = GlobalKey<FormState>();
  TextEditingController? mobileController;
  String? mobile = '';

  @override
  void onInit() {
    mobileController = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    mobileController!.dispose();
    super.onClose();
  }

  var mobileValidator = MultiValidator([
    RequiredValidator(errorText: 'فضلا أدخل رقم الهاتف'),
    LengthRangeValidator(
        min: 10, max: 10, errorText: 'رقم الهاتف يتكون من 10 أرقام فقط'),
  ]);

  Future<void> sendOTPMessageToCustomer() async {
    final isValid = authFormKey.currentState!.validate();
    try{
      if (isValid) {
        authFormKey.currentState!.save();
        Get.find<PublicController>().showLoading();
        Get.find<PublicController>().removeError();
        await authService.sendOTP(mobile);
        Get.to(() => OtpScreen(), arguments: mobile);
        Get.find<PublicController>().removeLoading();

      }
    }catch(error){
      Get.find<PublicController>().removeLoading();
      Get.find<PublicController>().showError();
    }


  }




}
