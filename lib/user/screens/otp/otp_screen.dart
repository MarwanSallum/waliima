import 'package:flutter/material.dart';
import 'package:waliima_app/user/screens/otp/components/body.dart';

class OtpScreen extends StatelessWidget {
  static String routeName = '/otp';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('رمز التفعيل'),
      ),
      body: Body(),
    );
  }
}
