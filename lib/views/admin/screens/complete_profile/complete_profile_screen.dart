import 'package:flutter/material.dart';
import 'package:waliima_app/views/admin/screens/complete_profile/components/body.dart';

class CompleteProfileScreen extends StatelessWidget {
  static String routeName = '/complete_profile';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('أكمل البيانات'),
      ),
      body: CompleteProfileBody(),
    );
  }
}
