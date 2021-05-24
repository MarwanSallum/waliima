import 'package:flutter/material.dart';
import 'package:waliima_app/admin/screens/success/components/body.dart';

class SuccessScreen extends StatelessWidget {
  static String routeName = "/success";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        title: Text('دخول ناجح'),
      ),
      body: Body(),
    );
  }
}
