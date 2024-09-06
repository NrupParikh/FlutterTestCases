import 'package:flutter/foundation.dart';
import 'package:flutter_application_1/base_structure/base/base_view_model_getx.dart';

class ForgotPasswordViewModel extends BaseViewModel {
  void doForgotPassword() {
    if (kDebugMode) {
      print("Forgot Password clicked");
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
