import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/base_structure/base/base_view_model_getx.dart';
import 'package:flutter_application_1/base_structure/constants/app_strings.dart';
import 'package:get/get.dart';

class LoginViewModel extends BaseViewModel {
  
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  var errorEmail = Rx<String?>(null);
  var errorPassword = Rx<String?>(null);

  Future<bool> validateLogin() async {
    if (kDebugMode) {
      print("Login clicked");
    }

    final email = emailController.text.trim();
    final password = passwordController.text.trim();

    if (GetUtils.isNullOrBlank(email) == true) {
      errorEmail.value = AppStrings.valEnterEmail;
    } else {
      errorEmail.value = null;
    }

    if (GetUtils.isNullOrBlank(password) == true) {
      errorPassword.value = AppStrings.valEnterPassword;
    } else {
      errorPassword.value = null;
    }

    if (errorEmail.value == null && errorPassword.value == null) {
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
