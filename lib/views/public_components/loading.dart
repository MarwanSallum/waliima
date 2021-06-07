import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:waliima_app/constants.dart';
import 'package:waliima_app/controllers/public_controller.dart';

class Loading extends StatelessWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GetBuilder<PublicController>(
        init: PublicController(),
        builder: (value) => value.isLoading
            ? CircularProgressIndicator(
                backgroundColor: kPrimaryColor,
                color: Colors.white,
              )
            : Container(),
      ),
    );
  }
}
