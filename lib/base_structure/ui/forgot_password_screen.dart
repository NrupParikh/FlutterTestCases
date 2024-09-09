import 'package:flutter/material.dart';
import 'package:flutter_application_1/base_structure/base/base_screen.dart';
import 'package:flutter_application_1/base_structure/constants/app_strings.dart';
import 'package:flutter_application_1/base_structure/constants/app_text_constant.dart';
import 'package:flutter_application_1/base_structure/vm/forgot_password_view_model.dart';
import 'package:get/get.dart';

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
                const Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: Text(
                    AppStrings.lblForgotPassword,
                    style: TextStyle(
                        fontSize: 24, fontFamily: AppTextConstant.poppinsBold),
                  ),
                ),
                const Text(AppStrings.lblEnterYourDetailsBelow,
                    style: TextStyle(
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
                      hintText: AppStrings.hintEnterYourEmail,
                      hintStyle: const TextStyle(
                          fontFamily: AppTextConstant.poppinsRegular),
                      errorText: vm.errorEmail.value,
                      label: const Text(AppStrings.lblEmailAddress,
                          style: TextStyle(
                              fontSize: 12,
                              fontFamily: AppTextConstant.poppinsRegular)),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // ToDO
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(AppStrings.lblGenerateOTP,
                            style: TextStyle(
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
                      hintText: AppStrings.hintOTP,
                      hintStyle: const TextStyle(
                          fontFamily: AppTextConstant.poppinsRegular),
                      errorText: vm.errorOtp.value,
                      label: const Text(AppStrings.hintEnterYourOTP,
                          style: TextStyle(
                              fontSize: 12,
                              fontFamily: AppTextConstant.poppinsRegular)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: OutlinedButton(
                      child: const Text(AppStrings.lblSubmit,
                          style: TextStyle(
                              fontSize: 12,
                              fontFamily: AppTextConstant.poppinsBold)),
                      onPressed: () async {
                        var isVerify = await vm.validateForgotPassword();
                        if (isVerify) {
                          Get.back();
                        }
                      }),
                ),
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(AppStrings.lblBackToLogin,
                        style: TextStyle(
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
