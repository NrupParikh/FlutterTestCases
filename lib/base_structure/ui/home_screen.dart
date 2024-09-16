import 'package:flutter/material.dart';
import 'package:flutter_application_1/base_structure/base/base_screen.dart';
import 'package:flutter_application_1/base_structure/common_widgets/custom_dialog.dart';
import 'package:flutter_application_1/base_structure/ui/login_screen.dart';
import 'package:flutter_application_1/base_structure/vm/sample_view_model.dart';
import 'package:get/get.dart';

import '../constants/app_key.dart';
import '../constants/app_strings.dart';
import '../constants/app_text_constant.dart';
import '../singleton/secure_storage_singleton.dart';

class HomeScreen extends BaseScreen<SampleViewModel> {
  const HomeScreen({super.key});

  @override
  Widget buildScreen(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
            () => Text(vm.count.string, style: context.textTheme.displayLarge),
          ),
          OutlinedButton(
              child: const Text(AppStrings.lblLogout,
                  style: TextStyle(
                      fontSize: 12, fontFamily: AppTextConstant.poppinsBold)),
              onPressed: () async {
                
                final result = await CustomDialog.showOkCancelDialog(AppStrings.appName,AppStrings.msgLogoutConfirmation);
                if (result) {

                  // set false to key_is_loggedIn and go to login by remove all stacks
                  await SecureStorageSingleton().storage.write(
                      key: AppKey.keyIsLoggedIn, value: false.toString());

                  Get.offAll(const LoginScreen());
                }
              })
        ],
      ),
    );
  }

  @override
  Widget? get buildFloatingActionButton => FloatingActionButton(
      onPressed: () {
        vm.increaseCount();
      },
      child: const Icon(Icons.add));
}
