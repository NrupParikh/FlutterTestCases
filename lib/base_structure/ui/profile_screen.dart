import 'package:flutter/material.dart';
import 'package:flutter_application_1/base_structure/base/base_screen.dart';
import 'package:flutter_application_1/base_structure/constants/app_text_constant.dart';
import 'package:flutter_application_1/base_structure/vm/profile_view_model.dart';
import 'package:get/get.dart';

import '../constants/app_strings.dart';

class ProfileScreen extends BaseScreen<ProfileViewModel> {
  const ProfileScreen({super.key});

  @override
  Widget buildScreen(BuildContext context) {
    return Obx(() => SingleChildScrollView(
          child: Form(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        enabledBorder: const OutlineInputBorder(),
                        hintText: AppStrings.hintEnterFirstName.tr,
                        hintStyle: const TextStyle(
                            fontFamily: AppTextConstant.poppinsRegular),
                        label: Text(AppStrings.lblFirstName.tr,
                            style: const TextStyle(
                                fontSize: 12,
                                fontFamily: AppTextConstant.poppinsRegular)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        enabledBorder: const OutlineInputBorder(),
                        hintText: AppStrings.hintEnterLastName.tr,
                        hintStyle: const TextStyle(
                            fontFamily: AppTextConstant.poppinsRegular),
                        label: Text(AppStrings.lblLastName.tr,
                            style: const TextStyle(
                                fontSize: 12,
                                fontFamily: AppTextConstant.poppinsRegular)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        enabledBorder: const OutlineInputBorder(),
                        hintText: AppStrings.hintEnterYourEmail.tr,
                        hintStyle: const TextStyle(
                            fontFamily: AppTextConstant.poppinsRegular),
                        label: Text(AppStrings.lblEmailAddress.tr,
                            style: const TextStyle(
                                fontSize: 12,
                                fontFamily: AppTextConstant.poppinsRegular)),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: Text(AppStrings.lblLanguage.tr,
                        style: const TextStyle(
                            fontSize: 14,
                            fontFamily: AppTextConstant.poppinsBold)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: DropdownButton(
                      dropdownColor: Theme.of(context).scaffoldBackgroundColor,
                      value: vm.selectedLanguageListItem.value,
                      isExpanded: true,
                      items: vm.languageList
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem(
                          value: value,
                          child: Text(value,
                              style: const TextStyle(
                                  fontSize: 14,
                                  fontFamily: AppTextConstant.poppinsRegular)),
                        );
                      }).toList(),
                      onChanged: (String? value) {
                        vm.selectedLanguageListItem.value = value!;
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: Text(AppStrings.lblSite.tr,
                        style: const TextStyle(
                            fontSize: 14,
                            fontFamily: AppTextConstant.poppinsBold)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: DropdownButton(
                      dropdownColor: Theme.of(context).scaffoldBackgroundColor,
                      value: vm.selectedSiteListItem.value,
                      isExpanded: true,
                      items: vm.siteList
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem(
                          value: value,
                          child: Text(value,
                              style: const TextStyle(
                                  fontSize: 14,
                                  fontFamily: AppTextConstant.poppinsRegular)),
                        );
                      }).toList(),
                      onChanged: (String? value) {
                        vm.selectedSiteListItem.value = value!;
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: Text(AppStrings.lblDateFormat.tr,
                        style: const TextStyle(
                            fontSize: 14,
                            fontFamily: AppTextConstant.poppinsBold)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: DropdownButton(
                      dropdownColor: Theme.of(context).scaffoldBackgroundColor,
                      value: vm.selectedDateFormatListItem.value,
                      isExpanded: true,
                      items: vm.dateFormatList
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem(
                          value: value,
                          child: Text(value,
                              style: const TextStyle(
                                  fontSize: 14,
                                  fontFamily: AppTextConstant.poppinsRegular)),
                        );
                      }).toList(),
                      onChanged: (String? value) {
                        vm.selectedDateFormatListItem.value = value!;
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: Text(AppStrings.lblTimeFormat.tr,
                        style: const TextStyle(
                            fontSize: 14,
                            fontFamily: AppTextConstant.poppinsBold)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: DropdownButton(
                      dropdownColor: Theme.of(context).scaffoldBackgroundColor,
                      value: vm.selectedTimeFormatListItem.value,
                      isExpanded: true,
                      items: vm.timeFormatList
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem(
                          value: value,
                          child: Text(value,
                              style: const TextStyle(
                                  fontSize: 14,
                                  fontFamily: AppTextConstant.poppinsRegular)),
                        );
                      }).toList(),
                      onChanged: (String? value) {
                        vm.selectedTimeFormatListItem.value = value!;
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          child: Text(AppStrings.lblSubmit.tr,
                              style: const TextStyle(
                                  fontSize: 12,
                                  fontFamily: AppTextConstant.poppinsBold)),
                          onPressed: () {}),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
