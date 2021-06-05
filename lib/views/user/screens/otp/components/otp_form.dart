
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:waliima_app/controllers/verification_controller.dart';
import 'package:waliima_app/size_config.dart';
import 'package:waliima_app/views/public_components/default_button.dart';


class OtpForm extends GetView<VerificationController> {
  @override
  Widget build(BuildContext context) {
    var currentFocus;
    unfocus() {
      currentFocus = FocusScope.of(context);
      if (!currentFocus.hasPrimaryFocus) {
        currentFocus.unfocus();
      }
    }
    return Form(
      key: controller.formKey,
      child: Column(
        children: [
          PinCodeTextField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            errorTextSpace: 40.0,
            validator: (value){
              return controller.validateOTPCode(value!);
            },
            appContext: context,
            pastedTextStyle: TextStyle(
              color: Colors.green.shade600,
              fontWeight: FontWeight.bold,
            ),
            length: 6,
            obscureText: true,
            obscuringCharacter: '*',
            blinkWhenObscuring: true,
            animationType: AnimationType.slide,
            errorAnimationDuration: 5,
            pinTheme: PinTheme(
              shape: PinCodeFieldShape.box,
              borderRadius: BorderRadius.circular(5),
              fieldHeight: 50,
              fieldWidth: 40,
              activeFillColor: Colors.grey,
              activeColor: Colors.white,
              inactiveColor: Colors.black26.withOpacity(0.4),
              inactiveFillColor: Colors.black26.withOpacity(0.4),
              selectedFillColor: Colors.white,
              selectedColor: Colors.black,
            ),
            cursorColor: Colors.black,
            animationDuration: Duration(milliseconds: 300),
            enableActiveFill: true,
            controller: controller.otpController,
            keyboardType: TextInputType.number,
            boxShadows: [
              BoxShadow(
                offset: Offset(0, 1),
                color: Colors.black12,
                blurRadius: 10,
              )
            ],
            onCompleted: (otpCode) {
              if (otpCode.length == 6) unfocus();
            },
            onChanged: (value) {
            },
            onSaved: (value){
              controller.otpCode = value;
            },

          ),
          SizedBox(height: SizeConfig.screenHeight * 0.15,),
          DefaultButton(
            text: 'تحقق',
            onPressed: (){
            controller.verifyCustomerMobileNumber(Get.arguments);
            },
          ),
        ],
      ),
    );
  }
}