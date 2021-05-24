import 'package:flutter/cupertino.dart';
import 'package:waliima_app/admin/screens/forgot_password/forgot_password_screen.dart';
import 'package:waliima_app/admin/screens/login/login_screen.dart';
import 'package:waliima_app/admin/screens/success/success_screen.dart';
import 'package:waliima_app/user/screens/splash/splash.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  LoginScreen.routeName: (context) => LoginScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  SuccessScreen.routeName: (context) => SuccessScreen(),
};