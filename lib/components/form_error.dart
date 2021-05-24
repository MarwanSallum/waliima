import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:waliima_app/size_config.dart';

class FormError extends StatelessWidget {
  const FormError({
    Key key,
    @required this.errors,
  }) : super(key: key);

  final List<String> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        errors.length, (index) => formErrorText(error: errors[index]),
      ),
    );
  }

  Row formErrorText({String error}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(error),
        SizedBox(width: getProportionateScreenWidth(10),),
        SvgPicture.asset(
          "assets/icons/close.svg",
          height: getProportionateScreenWidth(14),
          width: getProportionateScreenWidth(14),
        ),
      ],
    );
  }
}