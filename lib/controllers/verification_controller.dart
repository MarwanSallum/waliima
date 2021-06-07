import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:waliima_app/controllers/public_controller.dart';
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

  var otpValidator = MultiValidator([
    RequiredValidator(errorText: 'فضلا أدخل رمز التفعيل'),
    LengthRangeValidator(min: 6, max: 6, errorText: 'رمز التفعيل يتكون من 6 أرقام'),
  ]);

  Future<VerificationResponse?> verifyCustomerMobileNumber(String? mobile) async{
    final isValid = formKey.currentState!.validate();
    try{
      if(isValid){
        formKey.currentState!.save();
        Get.find<PublicController>().showLoading();
        Get.find<PublicController>().removeError();
        await logout();
        VerificationResponse response = await verificationService.verifyMobileNumber(mobile: mobile, otpCode: otpCode);
        await _saveVerificationResponse(response);
        if(response.accessToken!.isNotEmpty){
          Get.offAll(()=> HomeScreen());
        }
      }
    }catch(error){
      Get.find<PublicController>().removeLoading();
      Get.find<PublicController>().showError();
    }
  }

  Future<void> _saveVerificationResponse(VerificationResponse verificationResponse) async{
    SharedPreferences _sharedPref = await SharedPreferences.getInstance();
    _sharedPref.setString('access_token', verificationResponse.accessToken!);
    _sharedPref.setInt('user_id', verificationResponse.id!);
  }

  static Future<void> logout() async{
    SharedPreferences _sharedPref = await SharedPreferences.getInstance();
    _sharedPref.remove('access_token');
    _sharedPref.remove('user_id');
  }

  static Future<String?> getAccessToken() async{
    SharedPreferences _sharedPref = await SharedPreferences.getInstance();
    return _sharedPref.getString('access_token');
  }

  static Future<bool> isUserVerificated() async{
    SharedPreferences _sharedPref = await SharedPreferences.getInstance();
    if(_sharedPref.getString('access_token') != null && _sharedPref.getInt('user_id') != null){
      return true;
    }
    return false;
  }
}