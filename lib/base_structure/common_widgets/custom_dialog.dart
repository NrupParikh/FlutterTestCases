import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../constants/app_colors.dart';
import '../constants/app_strings.dart';
import '../constants/image_constant.dart';

class CustomDialog {
  static interNetAlertDialog(String message) {
    showGeneralDialog(
        context: Get.context!,
        barrierDismissible: true,
        barrierLabel:
            MaterialLocalizations.of(Get.context!).modalBarrierDismissLabel,
        barrierColor: ColorConstant.blackB2000000,
        transitionDuration: const Duration(milliseconds: 500),
        pageBuilder: (BuildContext buildContext, Animation animation,
            Animation secondaryAnimation) {
          return Center(
            child: Container(
              width: MediaQuery.of(Get.context!).size.width / 1.1,
              height: MediaQuery.of(Get.context!).size.height / 2.3,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Get.isDarkMode
                      ? ColorConstant.black161616
                      : ColorConstant.whiteLightA70019,
                  borderRadius: BorderRadius.circular(5)),
              child: Column(
                children: [
                  Image.asset(
                    ImageConstant.imageFailRed,
                    height: 80,
                    width: 80,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, right: 20, top: 16, bottom: 16),
                    child: Center(
                      child: Text(AppStrings.lblFail,
                          style: Theme.of(Get.context!).textTheme.labelMedium),
                    ),
                  ),
                  FittedBox(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 10.0, right: 25, top: 0, bottom: 16),
                      child: Center(
                        child: Text(message,
                            textAlign: TextAlign.center,
                            style: Theme.of(Get.context!)
                                .textTheme
                                .bodyLarge
                                ?.copyWith(letterSpacing: 1)),
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Get.back();
                      Get.back();
                    },
                    child: Container(
                      width: 150,
                      height: 50,
                      decoration: BoxDecoration(
                        color: ColorConstant.green501,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Text(AppStrings.errorPopupButtom,
                            textAlign: TextAlign.center,
                            style: Theme.of(Get.context!)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                    fontSize: 20,
                                    color: ColorConstant.whiteFFFFFF)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  static networkSuccessAlertDialog(String message, {String buttonText = ""}) {
    showGeneralDialog(
        context: Get.context!,
        barrierDismissible: true,
        barrierLabel:
            MaterialLocalizations.of(Get.context!).modalBarrierDismissLabel,
        barrierColor: ColorConstant.blackB2000000,
        transitionDuration: const Duration(milliseconds: 500),
        pageBuilder: (BuildContext buildContext, Animation animation,
            Animation secondaryAnimation) {
          return Center(
            child: Container(
              width: MediaQuery.of(Get.context!).size.width / 1.1,
              //height: mathUtils.size.height / 2.3,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Get.isDarkMode
                      ? ColorConstant.black161616
                      : ColorConstant.whiteLightA70019,
                  borderRadius: BorderRadius.circular(5)),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset(
                    ImageConstant.imageSuccessGreen,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, right: 20, top: 16, bottom: 16),
                    child: Center(
                      child: Text(AppStrings.lblSuccess,
                          style: Theme.of(Get.context!).textTheme.labelMedium),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0, right: 25, top: 0, bottom: 16),
                    child: Center(
                      child: Text(message,
                          textAlign: TextAlign.center,
                          style: Theme.of(Get.context!)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(letterSpacing: 1)),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Get.back();
                    },
                    child: Container(
                      width: 150,
                      height: 50,
                      decoration: BoxDecoration(
                        color: ColorConstant.green501,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Text(
                            buttonText.isEmpty
                                ? AppStrings.errorPopupButtom
                                : buttonText,
                            textAlign: TextAlign.center,
                            style: Theme.of(Get.context!)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                    fontSize: 20,
                                    color: ColorConstant.whiteFFFFFF)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

// Common dialog with message and ok button
  static Future<bool> showMessageDialog(String title, String message) async {
    final result = await Get.defaultDialog(
      title: title,
      middleText: message,
      barrierDismissible: false,
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
              onPressed: () {
                Get.back(result: true);
              },
              child: const Text(AppStrings.ok),
            ),
          ],
        ),
      ],
    );

    return result ?? false;
  }

  static Future<bool> showOkCancelDialog(String title, String message) async {
    final result = await Get.defaultDialog(
      title: title,
      middleText: message,
      barrierDismissible: false,
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
              onPressed: () {
                Get.back(result: true);
              },
              child: const Text(AppStrings.ok),
            ),
            TextButton(
              onPressed: () {
                Get.back(result: false);
              },
              child: const Text(AppStrings.cancel),
            ),
          ],
        ),
      ],
    );
    return result ?? false;
  }
}
