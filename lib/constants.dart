import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFFFF7643);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kPrimaryGradientColor = LinearGradient(
    begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);

const kAnimationDuration = Duration(milliseconds: 200);

// Form Error
final RegExp emailValidatorRegExp =
RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "برجاء كتابة البريد الإلكتروني";
const String kInvalidEmailError = "برجاء كتابة بريد إلكتروني صحيح";
const String kPassNullError = "برجاء كتابة كلمة المرور";
const String kShortPassError = "كلمة المرور ضعيفه جدا";
const String kMatchPassError = "كلمة المرور غير صحيحة";
const String kNamelNullError = "برجاء كتابة الإسم";
const String kPhoneNumberNullError = "برجاء كتابة رقم الهاتف";
const String kAddressNullError = "برجاء كتابة عنوان التوصيل";