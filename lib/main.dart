import 'package:flutter/material.dart';
import 'package:waliima_app/routes.dart';
import 'package:waliima_app/theme.dart';
import 'package:waliima_app/views/user/screens/splash/splash.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'waliima',
      theme: theme(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}



