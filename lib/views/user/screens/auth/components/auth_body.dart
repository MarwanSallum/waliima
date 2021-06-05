import 'package:flutter/material.dart';
import 'package:waliima_app/size_config.dart';
import 'package:waliima_app/views/public_components/term_and_condition.dart';
import 'package:waliima_app/views/user/screens/auth/components/auth_form.dart';

class AuthBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
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
                    'مرحبا بك في وليمة',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: getProportionateScreenWidth(28),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text('يمكنك الدخول عن طريق رقم هاتفك'),
                  SizedBox(height: SizeConfig.screenHeight * 0.08,),
                  AuthForm(),
                  SizedBox(height: SizeConfig.screenHeight * 0.08,),
                  TermAndCondition(),
                ],
              ),
            ),
          ),
        ),
    );
  }
}
