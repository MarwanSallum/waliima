import 'package:get/get.dart';

class PublicController extends GetxController{
  bool isLoading = false;
  bool isError = false;

  void showLoading(){
    isLoading = true;
    update();
  }

  void removeLoading(){
    isLoading = false;
    update();
  }

  void showError(){
    isError = true;
    update();
  }

  void removeError(){
    isError = false;
    update();
  }
}