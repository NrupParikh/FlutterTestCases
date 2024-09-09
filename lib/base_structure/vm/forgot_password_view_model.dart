import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/base_structure/base/base_view_model_getx.dart';
import 'package:flutter_application_1/base_structure/constants/app_strings.dart';
import 'package:get/get.dart';

class ForgotPasswordViewModel extends BaseViewModel {
  TextEditingController emailController = TextEditingController();
  TextEditingController otpController = TextEditingController();

  var errorEmail = Rx<String?>(null);
  var errorOtp = Rx<String?>(null);

  void doForgotPassword() {
    if (kDebugMode) {
      print("Forgot Password clicked");
    }
  }

  Future<bool> validateForgotPassword() async {
    final email = emailController.text.trim();
    final otp = otpController.text.trim();

    if (GetUtils.isNullOrBlank(email) == true) {
      errorEmail.value = AppStrings.valEnterEmail;
    } else {
      errorEmail.value = null;
    }

    if (GetUtils.isNullOrBlank(otp) == true) {
      errorOtp.value = AppStrings.valEnterOtp;
    } else {
      errorOtp.value = null;
    }

    if (errorEmail.value == null && errorOtp.value == null) {
      return true;
    } else {
      return false;
    }
  }

  @override
  void onInit() {
    super.onInit();
    if (kDebugMode) {
      print("Forgot Password VM Initialized");
    }
  }
}
