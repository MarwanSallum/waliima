import 'package:flutter/material.dart';
import 'package:waliima_app/admin/screens/forgot_password/components/body.dart';

class ForgotPasswordScreen extends StatelessWidget {
  static String routeName = "/forgot_password";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('إستعادة كلمة المرور'),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
