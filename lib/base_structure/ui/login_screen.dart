import 'package:flutter/material.dart';
import 'package:flutter_application_1/base_structure/base/base_screen.dart';
import 'package:flutter_application_1/base_structure/constants/app_strings.dart';
import 'package:flutter_application_1/base_structure/constants/app_text_constant.dart';
import 'package:flutter_application_1/base_structure/ui/forgot_password_screen.dart';
import 'package:flutter_application_1/base_structure/ui/home_screen.dart';
import 'package:flutter_application_1/base_structure/vm/login_view_model.dart';
import 'package:get/get.dart';

class LoginScreen extends BaseScreen<LoginViewModel> {
  const LoginScreen({super.key});

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
                    AppStrings.lblSignInNow,
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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: vm.passwordController,
                    obscureText: true,
                    obscuringCharacter: "*",
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      hintText: AppStrings.hintEnterYourPassword,
                      hintStyle: const TextStyle(
                          fontFamily: AppTextConstant.poppinsRegular),
                      errorText: vm.errorPassword.value,
                      label: const Text(AppStrings.lblPassword,
                          style: TextStyle(
                              fontSize: 12,
                              fontFamily: AppTextConstant.poppinsRegular)),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(const ForgotPasswordScreen());
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(AppStrings.lblForgotPasswordLink,
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: AppTextConstant.poppinsRegular))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: OutlinedButton(
                      child: const Text(AppStrings.lblLogin,
                          style: TextStyle(
                              fontSize: 12,
                              fontFamily: AppTextConstant.poppinsBold)),
                      onPressed: () async {
                        var isVerify = await vm.validateLogin();

                        if (isVerify) {
                          Get.to(const HomeScreen());
                        }
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}