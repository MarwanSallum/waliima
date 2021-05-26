import 'package:flutter/material.dart';
import 'package:waliima_app/admin/screens/complete_profile/components/complete_profile_form.dart';
import 'package:waliima_app/constants.dart';
import 'package:waliima_app/size_config.dart';
import 'package:waliima_app/term_and_condition.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.01),
              Text(
                  'أكمل بياناتك',
                style: headingStyle,
              ),
              Text(
                'أكمل بيانات حسابك لتستفيد من\n كامل الخدمات بشكل مباشر',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.02),
              CompleteProfileForm(),
              SizedBox(height: getProportionateScreenHight(30)),
              TermAndCondition(),
            ],
          ),
        ),
      ),
    );
  }
}



