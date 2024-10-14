import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/base_structure/base/base_screen.dart';
import 'package:flutter_application_1/base_structure/common_widgets/custom_dialog.dart';
import 'package:flutter_application_1/base_structure/constants/app_strings.dart';
import 'package:flutter_application_1/base_structure/constants/app_text_constant.dart';
import 'package:flutter_application_1/base_structure/vm/forgot_password_view_model.dart';
import 'package:get/get.dart';
import 'package:tuple/tuple.dart';

class ForgotPasswordScreen extends BaseScreen<ForgotPasswordViewModel> {
  const ForgotPasswordScreen({super.key});

  @override
  Widget buildScreen(BuildContext context) {
    return Obx(
      () => Form(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(AppStrings.lblEnterYourDetailsBelow.tr,
                    style: const TextStyle(
                        fontSize: 12,
                        fontFamily: AppTextConstant.poppinsSemiBold)),
                const SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: vm.emailController,
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      enabledBorder: const OutlineInputBorder(),
                      hintText: AppStrings.hintEnterYourEmail.tr,
                      hintStyle: const TextStyle(
                          fontFamily: AppTextConstant.poppinsRegular),
                      errorText: vm.errorEmail.value,
                      label:  Text(AppStrings.lblEmailAddress.tr,
                          style: const TextStyle(
                              fontSize: 12,
                              fontFamily: AppTextConstant.poppinsRegular)),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // ToDO
                  },
                  child:  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(AppStrings.lblGenerateOTP.tr,
                            style: const TextStyle(
                                fontSize: 12,
                                fontFamily: AppTextConstant.poppinsRegular))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: vm.otpController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      enabledBorder: const OutlineInputBorder(),
                      hintText: AppStrings.hintOTP.tr,
                      hintStyle: const TextStyle(
                          fontFamily: AppTextConstant.poppinsRegular),
                      errorText: vm.errorOtp.value,
                      label:  Text(AppStrings.hintEnterYourOTP.tr,
                          style: const TextStyle(
                              fontSize: 12,
                              fontFamily: AppTextConstant.poppinsRegular)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      child: Text(AppStrings.lblSubmit.tr,
                          style: const TextStyle(
                              fontSize: 12,
                              fontFamily: AppTextConstant.poppinsBold)),
                      onPressed: () async {
                        Tuple2<bool, String> ans =
                            await vm.validateForgotPassword();

                        if (kDebugMode) {
                          print("isVerify  ${ans.item1} Message ${ans.item2}");
                        }

                        if (ans.item1 == true) {
                          final result = await CustomDialog.showMessageDialog(
                              AppStrings.appName.tr, ans.item2);

                          if (result) {
                            vm.routeBack();
                          }
                        } else {
                          if (ans.item2.isNotEmpty) {
                            CustomDialog.showMessageDialog(
                                AppStrings.appName.tr, ans.item2);
                          }
                        }
                      }),
                ),
                GestureDetector(
                  onTap: () {
                    vm.routeBack();
                  },
                  child:  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(AppStrings.lblBackToLogin.tr,
                        style: const TextStyle(
                            fontSize: 12,
                            fontFamily: AppTextConstant.poppinsRegular)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
