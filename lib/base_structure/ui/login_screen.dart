import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/base_structure/base/base_screen.dart';
import 'package:flutter_application_1/base_structure/constants/app_strings.dart';
import 'package:flutter_application_1/base_structure/constants/app_text_constant.dart';
import 'package:flutter_application_1/base_structure/ui/project_management_screen.dart';
import 'package:flutter_application_1/base_structure/ui/six_pac_view_home_screen.dart';
import 'package:flutter_application_1/base_structure/vm/login_view_model.dart';
import 'package:get/get.dart';
import 'package:tuple/tuple.dart';

import '../../main.dart';
import '../../navigation_rail_example.dart';
import '../common_widgets/custom_dialog.dart';
import 'forgot_password_screen.dart';

class LoginScreen extends BaseScreen<LoginViewModel> {
  const LoginScreen({super.key});

  @override
  Widget buildScreen(BuildContext context) {
    vm.updateAppBarTitle(AppStrings.lblSignInNow.tr);
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
                      disabledBorder: const OutlineInputBorder(),
                      hintText: AppStrings.hintEnterYourEmail.tr,
                      hintStyle: const TextStyle(
                          fontFamily: AppTextConstant.poppinsRegular),
                      errorText: vm.errorEmail.value,
                      label: Text(AppStrings.lblEmailAddress.tr,
                          style: const TextStyle(
                              fontSize: 12,
                              fontFamily: AppTextConstant.poppinsRegular)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: vm.passwordController,
                    obscureText: !vm.passwordVisible.value,
                    obscuringCharacter: "*",
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                          onPressed: () {
                            vm.passwordVisible.value =
                                !vm.passwordVisible.value;
                          },
                          icon: Icon(vm.passwordVisible.value
                              ? Icons.visibility
                              : Icons.visibility_off)),
                      border: const OutlineInputBorder(),
                      disabledBorder: const OutlineInputBorder(),
                      hintText: AppStrings.hintEnterYourPassword.tr,
                      hintStyle: const TextStyle(
                          fontFamily: AppTextConstant.poppinsRegular),
                      errorText: vm.errorPassword.value,
                      label: Text(AppStrings.lblPassword.tr,
                          style: const TextStyle(
                              fontSize: 12,
                              fontFamily: AppTextConstant.poppinsRegular)),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    vm.pickMultipleImageOrVideos();
                    // Get.to(const ForgotPasswordScreen());
                    //  Get.to(const SixPacViewHomeScreen());
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(AppStrings.lblForgotPasswordLink.tr,
                            style: const TextStyle(
                                fontSize: 12,
                                fontFamily: AppTextConstant.poppinsRegular))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: OutlinedButton(
                      child: Text(AppStrings.lblLogin.tr),
                      onPressed: () async {
                        Tuple2<bool, String> ans = await vm.validateLogin();

                        if (kDebugMode) {
                          print("isVerify  ${ans.item1} Message ${ans.item2}");
                        }

                        if (ans.item1 == true) {
                          final result = await CustomDialog.showMessageDialog(
                              AppStrings.appName.tr, ans.item2);

                          if (result) {
                            // Remove all previous screen from the stack and go to Home
                            Get.offAll(const ProjectManagementScreen());
                          }
                        } else {
                          if (ans.item2.isNotEmpty) {
                            CustomDialog.showMessageDialog(
                                AppStrings.appName.tr, ans.item2);
                          }
                        }
                      }),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(firebaseToken.value,
                    style: const TextStyle(
                        fontSize: 12,
                        fontFamily: AppTextConstant.poppinsRegular))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
