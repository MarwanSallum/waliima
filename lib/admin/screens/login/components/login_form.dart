import 'package:flutter/material.dart';
import 'package:waliima_app/admin/screens/forgot_password/forgot_password_screen.dart';
import 'package:waliima_app/admin/screens/success/success_screen.dart';
import 'package:waliima_app/components/custom_surffix_icon.dart';
import 'package:waliima_app/components/default_button.dart';
import 'package:waliima_app/components/form_error.dart';
import 'package:waliima_app/constants.dart';
import 'package:waliima_app/size_config.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  String email;
  String password;
  bool remember = false;
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
          Row(
            children: [
              Checkbox(
                value: remember,
                activeColor: kPrimaryColor,
                onChanged: (value){
                  setState(() {
                    remember = value;
                  });
                },
              ),
              Text('تذكرني'),
              Spacer(),
              GestureDetector(
                  onTap: () => Navigator.pushNamed(context, ForgotPasswordScreen.routeName),
                child: Text(
                  'نسيت كلمة المرور',
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              ),
            ],
          ),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHight(20),),
          DefaultButton(
            text: 'تسجيل الدخول',
            onPressed: (){
              if(_formKey.currentState.validate()){
                _formKey.currentState.save();
                // if success login in then Go to success screen
                Navigator.pushNamedAndRemoveUntil(context, SuccessScreen.routeName, (route) => false);
              }
            },
          )
        ],
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => password = newValue,
      onChanged: (value){
        if(value.isNotEmpty && errors.contains(kPassNullError)){
          setState(() {
            errors.remove(kPassNullError);
          });
          return '';
        }else if(value.length >= 8 && errors.contains(kShortPassError)){
          setState(() {
            errors.add(kShortPassError);
          });
          return '';
        }
        return null;
      },
      validator: (value){
        if(value.isEmpty && !errors.contains(kPassNullError)){
          setState(() {
            errors.add(kPassNullError);
          });
          return '';
        }else if(value.length < 8 && !errors.contains(kShortPassError)){
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
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/lock.svg",),
      ),
    );
  }
  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue,
      onChanged: (value){
        if(value.isNotEmpty && errors.contains(kEmailNullError)){
          setState(() {
            errors.remove(kEmailNullError);
          });
          return '';
        }else if(emailValidatorRegExp.hasMatch(value) && !errors.contains(kInvalidEmailError)){
          setState(() {
            errors.remove(kInvalidEmailError);
          });
          return '';
        }
        return null;
      },
      validator: (value){
        if(value.isEmpty && !errors.contains(kEmailNullError)){
          setState(() {
            errors.add(kEmailNullError);
          });
          return '';
        }else if(!emailValidatorRegExp.hasMatch(value) && !errors.contains(kInvalidEmailError)){
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
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/message.svg",),
      ),
    );
  }
}