import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tuple/tuple.dart';
import '../base/base_view_model_getx.dart';
import '../constants/app_strings.dart';

class ChangePasswordViewModel extends BaseViewModel {
  TextEditingController currentPasswordController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  var errorCurrentPassword = Rx<String?>(null);
  var errorNewPassword = Rx<String?>(null);
  var errorConfirmPassword = Rx<String?>(null);

  var currentPasswordVisible = false.obs;
  var newPasswordVisible = false.obs;
  var confirmPasswordVisible = false.obs;

  Future<Tuple2<bool, String>> validateChangePassword() async {
    if (kDebugMode) {
      print("Submit clicked");
    }

    final currentPassword = currentPasswordController.text.trim();
    final newPassword = newPasswordController.text.trim();
    final confirmPassword = confirmPasswordController.text.trim();

    if (GetUtils.isNullOrBlank(currentPassword) == true) {
      errorCurrentPassword.value = AppStrings.valEnterCurrentPassword.tr;
    } else {
      errorCurrentPassword.value = null;
    }

    if (GetUtils.isNullOrBlank(newPassword) == true) {
      errorNewPassword.value = AppStrings.valEnterNewPassword.tr;
    } else {
      errorNewPassword.value = null;
    }

    if (GetUtils.isNullOrBlank(confirmPassword) == true) {
      errorConfirmPassword.value = AppStrings.valEnterConfirmPassword.tr;
    } else {
      errorConfirmPassword.value = null;
    }

    if (errorCurrentPassword.value == null &&
        errorNewPassword.value == null &&
        errorConfirmPassword.value == null) {
      try {
        if (newPassword != confirmPassword) {
          return Tuple2(false, AppStrings.msgPasswordMustBeMatch.tr);
        } else {
          return Tuple2(true, AppStrings.msgPasswordUpdated.tr);
        }
      } catch (ex) {
        return Tuple2(false, "$ex");
      }
    } else {
      return const Tuple2(false, "");
    }
  }

  @override
  void onInit() {
    super.onInit();
    if (kDebugMode) {
      print("Change Password VM Initialized");
    }
  }
}
