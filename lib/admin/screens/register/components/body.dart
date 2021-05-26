import 'package:flutter/material.dart';
import 'package:waliima_app/admin/screens/register/components/register_form.dart';
import 'package:waliima_app/components/social_card.dart';
import 'package:waliima_app/constants.dart';
import 'package:waliima_app/size_config.dart';
import 'package:waliima_app/term_and_condition.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenWidth * 0.02,),
              Text('إنشاء حساب', style: headingStyle),
              Text(
                'أدخل البيانات المطلوبة لإكمال عملية التسجيل',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenWidth * 0.07,),
              RegisterForm(),
              SizedBox(height: SizeConfig.screenWidth * 0.07,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialCard(
                    icon: "assets/icons/twitter.svg",
                    onTap: (){},
                  ),
                  SocialCard(
                    icon: "assets/icons/facebook.svg",
                    onTap: (){},
                  ),
                  SocialCard(
                    icon: "assets/icons/google.svg",
                    onTap: (){},
                  ),
                ],
              ),
              SizedBox(height: getProportionateScreenHight(20),),
              TermAndCondition(),
            ],
          ),
        ),
      ),
    );
  }
}

