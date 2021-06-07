import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:waliima_app/controllers/auth_controller.dart';
import 'package:waliima_app/size_config.dart';
import 'package:waliima_app/views/public_components/custom_surffix_icon.dart';
import 'package:waliima_app/views/public_components/default_button.dart';
import 'package:waliima_app/views/public_components/error_view.dart';
import 'package:waliima_app/views/public_components/loading.dart';

class AuthForm extends GetView<AuthController> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.authFormKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        children: [
          SizedBox(height: getProportionateScreenHight(30)),
          buildPhoneNumberFormField(),
          SizedBox(height: getProportionateScreenHight(30)),
          Loading(),
          ErrorView('فشل في تسجيل الدخول'),
          SizedBox(height: getProportionateScreenHight(30)),
          DefaultButton(
            text: 'دخول',
            onPressed: () {
              //TODO:: Check if phone number is admin user GO to Ammin Login Screen
              //TODO:: Check if phone number is public GO to OTP Screen
              controller.sendOTPMessageToCustomer();
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildPhoneNumberFormField() {
    return TextFormField(
      keyboardType: TextInputType.phone,
      controller: controller.mobileController,
      onSaved: (value) {
        controller.mobile = value;
      },
      validator: controller.mobileValidator,
      decoration: InputDecoration(
        labelText: 'رقم الهاتف',
        hintText: 'فضلا أدخل رقم الهاتف',
        hintTextDirection: TextDirection.rtl,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(
          svgIcon: "assets/icons/mobile-phone.svg",
        ),
      ),
    );
  }
}
