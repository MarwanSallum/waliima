import 'package:flutter/material.dart';
import 'package:waliima_app/constants.dart';
import 'package:waliima_app/size_config.dart';
import 'package:waliima_app/views/public_components/custom_surffix_icon.dart';
import 'package:waliima_app/views/public_components/default_button.dart';
import 'package:waliima_app/views/public_components/form_error.dart';

class CompleteProfileForm extends StatefulWidget {
  @override
  _CompleteProfileFormState createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String?> errors =[];
  String? firstName;
  String? lastName;
  String? phoneNumber;
  String? address;

  void addError({String? error}){
    if(!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({String? error}){
    if(errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey ,
      child: Column(
        children: [
          SizedBox(height: getProportionateScreenHight(30)),
          buildFirstNameFormField(),
          SizedBox(height: getProportionateScreenHight(30)),
          buildLastNameFormField(),
          SizedBox(height: getProportionateScreenHight(30)),
          buildPhoneNumberFormField(),
          SizedBox(height: getProportionateScreenHight(30)),
          buildAddressFormField(),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHight(40)),
          DefaultButton(
            text: 'تأكيد البيانات',
            onPressed: (){
              if(_formKey.currentState!.validate()){
                //TODO:: Go to Wait Super Admin to Accept screen
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildAddressFormField() {
    return TextFormField(
      onSaved: (newValue) => address = newValue,
      onChanged: (value){
        if(value.isNotEmpty){
          removeError(error: kAddressNullError);
        }
        return null;
      },
      validator: (value){
        if(value!.isEmpty){
          addError(error: kAddressNullError);
          return '';
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: 'العنوان',
        hintText: 'فضلا أدخل العنوان',
        hintTextDirection: TextDirection.rtl,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/address.svg",),
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
        if(value!.isEmpty){
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

  TextFormField buildLastNameFormField() {
    return TextFormField(
      onSaved: (newValue) => lastName = newValue,
      decoration: InputDecoration(
        labelText: 'الأسم الأخير',
        hintText: 'فضلا أدخل الأسم الأخير',
        hintTextDirection: TextDirection.rtl,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/user.svg",),
      ),
    );
  }

  TextFormField buildFirstNameFormField() {
    return TextFormField(
      onSaved: (newValue) => firstName = newValue,
      onChanged: (value){
        if(value.isNotEmpty){
          removeError(error: kNamelNullError);
        }
        return null;
      },
      validator: (value){
        if(value!.isEmpty){
          addError(error: kNamelNullError);
          return '';
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: 'الأسم الأول',
        hintText: 'فضلا أدخل الأسم الأول',
        hintTextDirection: TextDirection.rtl,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/user.svg",),
      ),
    );
  }
}