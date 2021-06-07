import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:waliima_app/bindings/all_controller_binding.dart';
import 'package:waliima_app/controllers/verification_controller.dart';
import 'package:waliima_app/routes.dart';
import 'package:waliima_app/size_config.dart';
import 'package:waliima_app/theme.dart';
import 'package:waliima_app/views/user/screens/auth/auth_screen.dart';
import 'package:waliima_app/views/user/screens/home/home_screen.dart';
import 'package:waliima_app/views/user/screens/splash/splash.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  var token = await VerificationController.getAccessToken();
  Widget _destination;
  if(token == null){
    _destination = AuthScreen();
  }else{
    _destination = HomeScreen();
  }
  runApp(MyApp(_destination));
}
class MyApp extends StatelessWidget {
  final Widget _destination;

  MyApp(this._destination);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'waliima',
      theme: theme(),
      textDirection: TextDirection.rtl,
      getPages: routes,
      home: _destination,
      initialBinding: AllControllerBinding(),

    );
  }
}



