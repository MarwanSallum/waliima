import 'package:get/get_navigation/src/routes/get_route.dart';
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

final List<GetPage> routes = [
  GetPage(name: SplashScreen.routeName, page: ()=> SplashScreen() ),
  GetPage(name: LoginScreen.routeName, page: ()=> LoginScreen()),
  GetPage(name: ForgotPasswordScreen.routeName, page: ()=> ForgotPasswordScreen()),
  GetPage(name: SuccessScreen.routeName, page: ()=> SuccessScreen()),
  GetPage(name: RegisterScreen.routeName, page: ()=> RegisterScreen()),
  GetPage(name: CompleteProfileScreen.routeName, page: ()=> CompleteProfileScreen()),
  GetPage(name: OtpScreen.routeName, page: ()=> OtpScreen()),
  GetPage(name: AuthScreen.routeName, page: ()=> AuthScreen()),
  GetPage(name: HomeScreen.routeName, page: ()=> HomeScreen()),
  GetPage(name: CartScreen.routeName, page: ()=> CartScreen()),
];
