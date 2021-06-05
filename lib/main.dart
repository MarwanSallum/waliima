import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:waliima_app/bindings/all_controller_binding.dart';
import 'package:waliima_app/routes.dart';
import 'package:waliima_app/theme.dart';
import 'package:waliima_app/views/user/screens/splash/splash.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'waliima',
      theme: theme(),
      getPages: routes,
      home: SplashScreen(),
      initialBinding: AllControllerBinding(),

    );
  }
}



