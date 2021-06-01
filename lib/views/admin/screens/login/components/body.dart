import 'package:flutter/material.dart';
import 'package:waliima_app/size_config.dart';
import 'package:waliima_app/views/admin/screens/login/components/login_form.dart';
import 'package:waliima_app/views/admin/screens/login/components/no_account_text.dart';
import 'package:waliima_app/views/public_components/social_card.dart';

class LoginBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.04,),
              Text(
                'أهلا بعودتك',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: getProportionateScreenWidth(28),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text('سجل دخولك بإستخدام البريد الإلكتروني وكلمة المرور'),
              SizedBox(height: SizeConfig.screenHeight * 0.08,),
              LoginForm(),
              SizedBox(height: SizeConfig.screenHeight * 0.08,),
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
              NoAccountText(),
            ],
          ),
        ),
      ),
    ));
  }
}










