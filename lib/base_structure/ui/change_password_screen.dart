import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/base_structure/base/base_screen.dart';
import 'package:flutter_application_1/base_structure/constants/app_text_constant.dart';
import 'package:flutter_application_1/base_structure/vm/change_password_view_model.dart';
import 'package:get/get.dart';
import 'package:tuple/tuple.dart';

import '../common_widgets/custom_dialog.dart';
import '../constants/app_strings.dart';

class ChangePasswordScreen extends BaseScreen<ChangePasswordViewModel> {
  const ChangePasswordScreen({super.key});

  @override
  Widget buildScreen(BuildContext context) {
    return Obx(() => Form(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: vm.currentPasswordController,
                      obscureText: !vm.currentPasswordVisible.value,
                      obscuringCharacter: "*",
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                            onPressed: () {
                              vm.currentPasswordVisible.value =
                                  !vm.currentPasswordVisible.value;
                            },
                            icon: Icon(vm.currentPasswordVisible.value
                                ? Icons.visibility
                                : Icons.visibility_off)),
                        border: const OutlineInputBorder(),
                        disabledBorder: const OutlineInputBorder(),
                        hintText: AppStrings.hintEnterYourCurrentPassword.tr,
                        hintStyle: const TextStyle(
                            fontFamily: AppTextConstant.poppinsRegular),
                        errorText: vm.errorCurrentPassword.value,
                        label: Text(AppStrings.lblCurrentPassword.tr,
                            style: const TextStyle(
                                fontSize: 12,
                                fontFamily: AppTextConstant.poppinsRegular)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: vm.newPasswordController,
                      obscureText: !vm.newPasswordVisible.value,
                      obscuringCharacter: "*",
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                            onPressed: () {
                              vm.newPasswordVisible.value =
                                  !vm.newPasswordVisible.value;
                            },
                            icon: Icon(vm.newPasswordVisible.value
                                ? Icons.visibility
                                : Icons.visibility_off)),
                        border: const OutlineInputBorder(),
                        disabledBorder: const OutlineInputBorder(),
                        hintText: AppStrings.hintEnterYourNewPassword.tr,
                        hintStyle: const TextStyle(
                            fontFamily: AppTextConstant.poppinsRegular),
                        errorText: vm.errorNewPassword.value,
                        label: Text(AppStrings.lblNewPassword.tr,
                            style: const TextStyle(
                                fontSize: 12,
                                fontFamily: AppTextConstant.poppinsRegular)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: vm.confirmPasswordController,
                      obscureText: !vm.confirmPasswordVisible.value,
                      obscuringCharacter: "*",
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                            onPressed: () {
                              vm.confirmPasswordVisible.value =
                                  !vm.confirmPasswordVisible.value;
                            },
                            icon: Icon(vm.confirmPasswordVisible.value
                                ? Icons.visibility
                                : Icons.visibility_off)),
                        border: const OutlineInputBorder(),
                        disabledBorder: const OutlineInputBorder(),
                        hintText: AppStrings.hintEnterPasswordAgain.tr,
                        hintStyle: const TextStyle(
                            fontFamily: AppTextConstant.poppinsRegular),
                        errorText: vm.errorConfirmPassword.value,
                        label: Text(AppStrings.lblConfirmPassword.tr,
                            style: const TextStyle(
                                fontSize: 12,
                                fontFamily: AppTextConstant.poppinsRegular)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: OutlinedButton(
                        child: Text(AppStrings.lblSubmit.tr),
                        onPressed: () async {
                          if (kDebugMode) {
                            Tuple2<bool, String> ans =
                                await vm.validateChangePassword();
                            if (ans.item1 == true) {
                              final result =
                                  await CustomDialog.showMessageDialog(
                                      AppStrings.appName.tr, ans.item2);
                              if (result) {
                                vm.currentPasswordController.clear();
                                vm.newPasswordController.clear();
                                vm.confirmPasswordController.clear();
                              }
                            } else if (ans.item2.isNotEmpty) {
                              if (ans.item2.isNotEmpty) {
                                CustomDialog.showMessageDialog(
                                    AppStrings.appName.tr, ans.item2);
                              }
                            }
                          }
                        }),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
