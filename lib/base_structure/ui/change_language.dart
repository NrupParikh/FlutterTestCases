import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/base_structure/base/base_screen.dart';
import 'package:flutter_application_1/base_structure/constants/app_strings.dart';
import 'package:flutter_application_1/base_structure/vm/change_language_view_model.dart';
import 'package:get/get.dart';
import '../constants/app_text_constant.dart';

class ChangeLanguageScreen extends BaseScreen<ChangeLanguageViewModel> {
  ChangeLanguageScreen({super.key});

  @override
  Widget buildScreen(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Obx(() => RadioListTile(
              title:  Text(AppStrings.english.tr),
              value: "en",
              groupValue: vm.selectedValue.value,
              onChanged: (ans) {
                vm.selectedValue.value = ans.toString();
              })),
          Obx(() => RadioListTile(
              title:  Text(AppStrings.italy.tr),
              value: "it",
              groupValue: vm.selectedValue.value,
              onChanged: (ans) {
                vm.selectedValue.value = ans.toString();
              })),
          Obx(() => RadioListTile(
              title: Text(AppStrings.spanish.tr),
              value: "es",
              groupValue: vm.selectedValue.value,
              onChanged: (ans) {
                vm.selectedValue.value = ans.toString();
              })),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: OutlinedButton(
                child: Text(AppStrings.lblSubmit.tr,
                    style: const TextStyle(
                        fontSize: 12, fontFamily: AppTextConstant.poppinsBold)),
                onPressed: () async {
                  if (kDebugMode) {
                    print("Selected Language ${vm.selectedValue.value}");
                    await vm.updateLanguage(vm.selectedValue.value);
                  }
                }),
          )
        ],
      ),
    );
  }
}
