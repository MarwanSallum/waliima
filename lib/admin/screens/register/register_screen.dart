import 'package:flutter/material.dart';
import 'package:waliima_app/admin/screens/register/components/body.dart';

class RegisterScreen extends StatelessWidget {
  static String routeName = '/register';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('إنشاء حساب'),
      ),
      body: Body(),
    );
  }
}
