import 'package:flutter/cupertino.dart';
import 'package:waliima_app/admin/screens/complete_profile/complete_profile_screen.dart';
import 'package:waliima_app/admin/screens/forgot_password/forgot_password_screen.dart';
import 'package:waliima_app/admin/screens/login/login_screen.dart';
import 'package:waliima_app/admin/screens/register/register_screen.dart';
import 'package:waliima_app/admin/screens/success/success_screen.dart';
import 'package:waliima_app/user/screens/auth/auth_screen.dart';
import 'package:waliima_app/user/screens/cart/cart_screen.dart';
import 'package:waliima_app/user/screens/home/home_screen.dart';
import 'package:waliima_app/user/screens/otp/otp_screen.dart';
import 'package:waliima_app/user/screens/splash/splash.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  LoginScreen.routeName: (context) => LoginScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  SuccessScreen.routeName: (context) => SuccessScreen(),
  RegisterScreen.routeName: (context) => RegisterScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  AuthScreen.routeName: (context) => AuthScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  CartScreen.routeName: (context) => CartScreen(),
};