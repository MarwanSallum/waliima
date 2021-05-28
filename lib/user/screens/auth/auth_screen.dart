import 'package:flutter/material.dart';
import 'package:waliima_app/user/screens/auth/components/body.dart';

class AuthScreen extends StatelessWidget {
  static String routeName = "/auth";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(),
      body: Body(),
    );
  }
}
