import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:waliima_app/controllers/public_controller.dart';

class ErrorView extends StatelessWidget {
  String title = 'يوجد خطأ';
  ErrorView(this.title);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GetBuilder<PublicController>(
        init: PublicController(),
        builder: (value) => value.isError
            ? Text(
                title,
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              )
            : Container(),
      ),
    );
  }
}
