import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/base_structure/base/base_view_model_getx.dart';
import 'package:get/get.dart';

class LoginViewModel extends BaseViewModel {
  
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  var errorEmail = "".obs;
  var errorPassword = "".obs;

  Future<bool> validateLogin() async {
    if (kDebugMode) {
      print("Login clicked");
    }

    final email = emailController.text.trim();
    final password = passwordController.text.trim();

    if (GetUtils.isNullOrBlank(email) == true) {
      errorEmail.value = "Please enter email";
    } else {
      errorEmail.value = "";
    }

    if (GetUtils.isNullOrBlank(password) == true) {
      errorPassword.value = "Please enter password";
    } else {
      errorPassword.value = "";
    }

    if (errorEmail.value == "" && errorPassword.value == "") {
      return true;
    } else {
      return false;
    }
  }

  @override
  void onInit() {
    super.onInit();
    if (kDebugMode) {
      print("Login VM Initialized");
    }
  }
}
