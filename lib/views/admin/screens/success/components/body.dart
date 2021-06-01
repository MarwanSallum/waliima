import 'package:flutter/material.dart';
import 'package:waliima_app/size_config.dart';
import 'package:waliima_app/views/public_components/default_button.dart';

class SuccessBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: SizeConfig.screenHeight * 0.04,),
        Image.asset("assets/images/success.png",
        height: SizeConfig.screenHeight * 0.4,
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.08,),
        Text(
          'تم الدخول بنجاح',
          style: TextStyle(
            fontSize: getProportionateScreenWidth(30),
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Spacer(),
        SizedBox(
          width: SizeConfig.screenWidth * 0.6,
            child: DefaultButton(
              text: "الرئيسية",
              onPressed: (){},
            ),
        ),
        Spacer(),
      ],
    );
  }
}
