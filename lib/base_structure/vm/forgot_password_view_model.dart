import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/base_structure/api/api_service.dart';
import 'package:flutter_application_1/base_structure/base/base_view_model_getx.dart';
import 'package:flutter_application_1/base_structure/constants/app_strings.dart';
import 'package:get/get.dart';
import 'package:tuple/tuple.dart';

class ForgotPasswordViewModel extends BaseViewModel {
  final service = ApiService();

  TextEditingController emailController = TextEditingController();
  TextEditingController otpController = TextEditingController();

  var errorEmail = Rx<String?>(null);
  var errorOtp = Rx<String?>(null);

  Future<Tuple2<bool, String>> validateForgotPassword() async {
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
      try {
        var appResponse = await service.forgotPassword(email);
        if (appResponse.statusCode == 200) {
          return Tuple2(true, appResponse.message);
        } else {
          return Tuple2(false, appResponse.message);
        }
      } catch (ex) {
        return Tuple2(false,"$ex");
      }
    } else {
      return const Tuple2(false, "");
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
