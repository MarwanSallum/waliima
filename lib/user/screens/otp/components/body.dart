import 'package:flutter/material.dart';
import 'package:waliima_app/constants.dart';
import 'package:waliima_app/size_config.dart';
import 'package:waliima_app/user/screens/otp/components/otp_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
        ),
        child: Column(
          children: [
            SizedBox(height: SizeConfig.screenHeight * 0.05,),
            Text('رمز التفعيل', style: headingStyle),
            Text('966544075***تم إرسال الرمز إلى '),
            buildOtpExpireTimer(),
            SizedBox(height: SizeConfig.screenHeight * 0.15,),
            OtpForm(),
            SizedBox(height: SizeConfig.screenHeight * 0.1,),
            GestureDetector(
              onTap: (){
                //TODO:: Resend OTP Code to User
              },
              child: Text(
                'إعادة إرسال الرمز',
                style: TextStyle(decoration: TextDecoration.underline),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row buildOtpExpireTimer() {
    return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TweenAnimationBuilder(
                tween: Tween(begin: 30.0, end: 0),
                duration: Duration(seconds: 30),
                builder: (context, value, child) =>Text(
                  '00:${value.toInt()}',
                  style: TextStyle(color: kPrimaryColor),
                ),
              onEnd: (){
                  //TODO:: Delete OTP from server
              },
            ),
            Text('الرمز سوف ينتهي خلال '),
          ],
        );
  }
}


