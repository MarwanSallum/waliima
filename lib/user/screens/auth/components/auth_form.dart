import 'package:flutter/material.dart';
import 'package:waliima_app/components/custom_surffix_icon.dart';
import 'package:waliima_app/components/default_button.dart';
import 'package:waliima_app/components/form_error.dart';
import 'package:waliima_app/constants.dart';
import 'package:waliima_app/size_config.dart';

class AuthForm extends StatefulWidget {
  @override
  _AuthFormState createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  String phoneNumber;

  void addError({String error}){
    if(!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({String error}){
    if(errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          SizedBox(height: getProportionateScreenHight(30)),
          buildPhoneNumberFormField(),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHight(30)),
          DefaultButton(
            text: 'دخول',
            onPressed: (){
              if(_formKey.currentState.validate()){
                //TODO:: Check if phone number is admin user GO to Ammin Login Screen
                //TODO:: Check if phone number is public GO to OTP Screen
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildPhoneNumberFormField() {
    return TextFormField(
      keyboardType: TextInputType.phone,
      onSaved: (newValue) => phoneNumber = newValue,
      onChanged: (value){
        if(value.isNotEmpty){
          removeError(error: kPhoneNumberNullError);
        }
        return null;
      },
      validator: (value){
        if(value.isEmpty){
          addError(error: kPhoneNumberNullError);
          return '';
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: 'رقم الهاتف',
        hintText: 'فضلا أدخل رقم الهاتف',
        hintTextDirection: TextDirection.rtl,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/mobile-phone.svg",),
      ),
    );
  }
}
