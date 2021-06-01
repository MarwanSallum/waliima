import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:waliima_app/constants.dart';

class TermAndCondition extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
          text: 'بإستخدام تطبيق وليمة فأنت توافق على الشروط والأحكام الخاصة بالتطبيق وعليك الإلتزام بها\n \n للإطلاع على الشروط والأحكام ',
          style: TextStyle(color: Colors.black, fontFamily: 'ElMessiri',),
          children: <TextSpan>[
            TextSpan(
                text: '  إضغط هنا',
                style: TextStyle(color: kPrimaryColor),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                  //TODO:: Go to term and condition screen
                  }
            ),
          ],
      ),
    );
  }
}
