import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/base_structure/constants/app_colors.dart';
import 'package:get/get.dart';

class ProgressDialogUtils {
  static bool isProgressVisible = false;

  ///common method for showing progress dialog



static void showProgressDialog({isCancellable = false}) async {
  if (!isProgressVisible) {
    Get.dialog(
      PopScope(
        canPop: false, 
        // Prevent the dialog from being dismissed
        onPopInvoked: (didPop) async {
          if (kDebugMode) {
            print("press back");
          }
          return; 
        },
        child: Center(
          child: CircularProgressIndicator.adaptive(
            strokeWidth: 3,
            valueColor: AlwaysStoppedAnimation<Color>(ColorConstant.green500),
          ),
        ),
      ),
      barrierDismissible: isCancellable,
    );
    isProgressVisible = true;
  }
}

  ///common method for hiding progress dialog
  static void hideProgressDialog() {

    if (isProgressVisible) Get.back();
    isProgressVisible = false;
  }
}
