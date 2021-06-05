import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:waliima_app/services/auth_service.dart';

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

  String? validateMobile(String value) {
    if (!GetUtils.isPhoneNumber(value)) {
      return 'يجب إدخال رقم هاتف صحيح';
    }
    return null;
  }

  Future<void> sendOTPMessageToCustomer() async {
    final isValid = authFormKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    authFormKey.currentState!.save();
    await authService.sendOTP(mobile);
    return null;
  }
}
