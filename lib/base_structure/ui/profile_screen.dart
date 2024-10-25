import 'package:flutter/foundation.dart';
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
                        enabled: vm.isEdit.value,
                        border: const OutlineInputBorder(),
                        disabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey)),
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
                      enabled: vm.isEdit.value,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        disabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey)),
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
                      enabled: vm.isEdit.value,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        disabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey)),
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
                  const SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: DropdownButtonFormField<String>(
                      dropdownColor: Colors.black,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(4.0),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 2.00),
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 2.00),
                        ),
                      ),
                      value: vm.selectedLanguageListItem.value,
                      isExpanded: true,
                      items: vm.languageList
                          .map<DropdownMenuItem<String>>((String item) {
                        return DropdownMenuItem(
                          value: item,
                          child: Text(item,
                              style: TextStyle(
                                  color:
                                      vm.selectedLanguageListItem.value == item
                                          ? (vm.isEdit.value)
                                              ? Colors.green
                                              : Colors.grey
                                          : Colors.white,
                                  fontSize: 14,
                                  fontFamily: AppTextConstant.poppinsRegular)),
                        );
                      }).toList(),
                      onChanged: (vm.isEdit.value == true)
                          ? (String? value) {
                              vm.selectedLanguageListItem.value = value!;
                            }
                          : null,
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
                  const SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: DropdownButtonFormField<String>(
                      dropdownColor: Colors.black,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(4.0),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 2.00),
                        ),
                      ),
                      value: vm.selectedSiteListItem.value,
                      isExpanded: true,
                      items: vm.siteList
                          .map<DropdownMenuItem<String>>((String item) {
                        return DropdownMenuItem(
                          value: item,
                          child: Text(item,
                              style: TextStyle(
                                  color: vm.selectedSiteListItem.value == item
                                      ? (vm.isEdit.value)
                                          ? Colors.green
                                          : Colors.grey
                                      : Colors.white,
                                  fontSize: 14,
                                  fontFamily: AppTextConstant.poppinsRegular)),
                        );
                      }).toList(),
                      onChanged: (vm.isEdit.value == true)
                          ? (String? value) {
                              vm.selectedSiteListItem.value = value!;
                            }
                          : null,
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
                  const SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: DropdownButtonFormField<String>(
                      dropdownColor: Colors.black,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(4.0),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 2.00),
                        ),
                      ),
                      value: vm.selectedDateFormatListItem.value,
                      isExpanded: true,
                      items: vm.dateFormatList
                          .map<DropdownMenuItem<String>>((String item) {
                        return DropdownMenuItem(
                          value: item,
                          child: Text(item,
                              style: TextStyle(
                                  color: vm.selectedDateFormatListItem.value ==
                                          item
                                      ? (vm.isEdit.value)
                                          ? Colors.green
                                          : Colors.grey
                                      : Colors.white,
                                  fontSize: 14,
                                  fontFamily: AppTextConstant.poppinsRegular)),
                        );
                      }).toList(),
                      onChanged: vm.isEdit.value == true
                          ? (String? value) {
                              vm.selectedDateFormatListItem.value = value!;
                            }
                          : null,
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
                  const SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: DropdownButtonFormField<String>(
                      dropdownColor: Colors.black,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(4.0),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 2.00),
                        ),
                      ),
                      value: vm.selectedTimeFormatListItem.value,
                      isExpanded: true,
                      items: vm.timeFormatList
                          .map<DropdownMenuItem<String>>((String item) {
                        return DropdownMenuItem(
                          value: item,
                          child: Text(item,
                              style: TextStyle(
                                  color: vm.selectedTimeFormatListItem.value ==
                                          item
                                      ? (vm.isEdit.value)
                                          ? Colors.green
                                          : Colors.grey
                                      : Colors.white,
                                  fontSize: 14,
                                  fontFamily: AppTextConstant.poppinsRegular)),
                        );
                      }).toList(),
                      onChanged: vm.isEdit.value == true
                          ? (String? value) {
                              vm.selectedTimeFormatListItem.value = value!;
                            }
                          : null,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                              side: BorderSide(
                                  color: (vm.isEdit.value)
                                      ? Colors.green
                                      : Colors.grey)),
                          onPressed: (vm.isEdit.value == true) ? () {
                            if (kDebugMode) {
                              print("Profile Edited");
                            }
                          } : null,
                          child: Text(AppStrings.lblSubmit.tr)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
