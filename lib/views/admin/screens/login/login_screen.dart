import 'package:flutter/material.dart';
import 'package:waliima_app/views/admin/screens/login/components/body.dart';

class LoginScreen extends StatelessWidget {
  static String routeName = "/login";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('تسجيل دخول المشرفون'),
        centerTitle: true,
      ),
      body: LoginBody(),
    );
  }
}
