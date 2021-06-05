import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:waliima_app/models/verification_response.dart';
import 'package:waliima_app/services/verification_service.dart';
import 'package:waliima_app/views/user/screens/home/home_screen.dart';

class VerificationController extends GetxController{
  final VerificationService verificationService = VerificationService();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController? otpController;
  String? otpCode;

  @override
  void onInit() {
    otpController = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    otpController!.dispose();
    super.onClose();
  }

  String? validateOTPCode(String value){
    if(!GetUtils.isNum(value)){
      return 'الرمز يتكون من أرقام فقط';
    }else if(GetUtils.isLengthLessThan(value, 6)){
      return 'رمز التفعيل يتكون من 6 أرقام';
    }
    return null;
  }

  Future<VerificationResponse> verifyCustomerMobileNumber(String? mobile) async{
    final isValid = formKey.currentState!.validate();
    formKey.currentState!.save();
    VerificationResponse response = await verificationService.verifyMobileNumber(mobile: mobile, otpCode: otpCode);
    if(response.accessToken!.isNotEmpty){
      Get.offAll(()=> HomeScreen());
    }
    return response;
  }

}