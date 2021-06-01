import 'package:flutter/cupertino.dart';
import 'package:waliima_app/views/admin/screens/complete_profile/complete_profile_screen.dart';
import 'package:waliima_app/views/admin/screens/forgot_password/forgot_password_screen.dart';
import 'package:waliima_app/views/admin/screens/login/login_screen.dart';
import 'package:waliima_app/views/admin/screens/register/register_screen.dart';
import 'package:waliima_app/views/admin/screens/success/success_screen.dart';
import 'package:waliima_app/views/user/screens/auth/auth_screen.dart';
import 'package:waliima_app/views/user/screens/cart/cart_screen.dart';
import 'package:waliima_app/views/user/screens/home/home_screen.dart';
import 'package:waliima_app/views/user/screens/otp/otp_screen.dart';
import 'package:waliima_app/views/user/screens/splash/splash.dart';


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