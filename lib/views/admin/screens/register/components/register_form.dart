import 'package:flutter/material.dart';
import 'package:waliima_app/constants.dart';
import 'package:waliima_app/size_config.dart';
import 'package:waliima_app/views/admin/screens/complete_profile/complete_profile_screen.dart';
import 'package:waliima_app/views/public_components/custom_surffix_icon.dart';
import 'package:waliima_app/views/public_components/default_button.dart';
import 'package:waliima_app/views/public_components/form_error.dart';

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  String? conform_password;
  final List<String> errors = [];
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(height: getProportionateScreenHight(30),),
          buildPasswordFormField(),
          SizedBox(height: getProportionateScreenHight(30),),
          buildConfirmPasswordFormField(),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHight(40),),
          DefaultButton(
            text: 'تسجيل',
            onPressed: (){
              if(_formKey.currentState!.validate()){
                //TODO:: Go to next Screen
                Navigator.pushNamed(context, CompleteProfileScreen.routeName);
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kPassNullError)) {
          setState(() {
            errors.add(kPassNullError);
          });
          return '';
        } else if (value.length < 8 &&
            !errors.contains(kShortPassError)) {
          setState(() {
            errors.add(kShortPassError);
          });
          return '';
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: 'كلمة المرور',
        hintText: 'أدخل كلمة المرور ',
        hintTextDirection: TextDirection.rtl,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(
          svgIcon: "assets/icons/lock.svg",
        ),
      ),
    );
  }

  TextFormField buildConfirmPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => conform_password = newValue,
      onChanged: (value) {
      },
      validator: (value) {
        if (value!.isEmpty) {
          return '';
        } else if (password != value) {
          setState(() {
            errors.add(kMatchPassError);
          });
          return '';
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: 'تأكيد كلمة المرور',
        hintText: 'أعد إدخال كلمة المرور',
        hintTextDirection: TextDirection.rtl,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(
          svgIcon: "assets/icons/lock.svg",
        ),
      ),
    );
  }



  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue,
      onChanged: (value) {
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kEmailNullError)) {
          setState(() {
            errors.add(kEmailNullError);
          });
          return '';
        } else if (!emailValidatorRegExp.hasMatch(value) &&
            !errors.contains(kInvalidEmailError)) {
          setState(() {
            errors.add(kInvalidEmailError);
          });
          return '';
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: 'البريد الإلكتروني',
        hintText: 'أدخل بريدك الإلكتروني',
        hintTextDirection: TextDirection.rtl,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(
          svgIcon: "assets/icons/message.svg",
        ),
      ),
    );
  }
}