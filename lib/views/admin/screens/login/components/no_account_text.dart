import 'package:flutter/material.dart';
import 'package:waliima_app/constants.dart';
import 'package:waliima_app/size_config.dart';
import 'package:waliima_app/views/admin/screens/register/register_screen.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
            onTap: ()=> Navigator.pushNamed(context, RegisterScreen.routeName),
          child: Text(
            "سجل هنا",
            style: TextStyle(
              fontSize: getProportionateScreenWidth(16),
              color: kPrimaryColor,
            ),
          ),
        ),
        Text(
          "لا تمتلك حساب؟ ",
          style: TextStyle(fontSize: getProportionateScreenWidth(16)),
        ),
      ],
    );
  }
}