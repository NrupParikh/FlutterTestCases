import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/base_structure/base/base_screen.dart';
import 'package:flutter_application_1/base_structure/constants/app_text_constant.dart';
import 'package:flutter_application_1/base_structure/ui/nrd_screen.dart';
import 'package:flutter_application_1/base_structure/ui/rch_screen.dart';
import 'package:get/get.dart';

import '../constants/app_strings.dart';
import '../vm/project_filter_view_model.dart';

class ProjectFilterScreen extends BaseScreen<ProjectFilterViewModel> {
  const ProjectFilterScreen({super.key});

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
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: Text(AppStrings.lblProjectType.tr,
                        style: const TextStyle(
                            fontSize: 14,
                            fontFamily: AppTextConstant.poppinsBold)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: DropdownButton(
                      iconDisabledColor: Colors.black,
                      iconEnabledColor: Colors.green,
                      value: vm.selectedProjectTypeItem.value,
                      isExpanded: true,
                      items: vm.projectTypeList
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
                        vm.selectedProjectTypeItem.value = value!;
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: Text(AppStrings.lblProjectStatus.tr,
                        style: const TextStyle(
                            fontSize: 14,
                            fontFamily: AppTextConstant.poppinsBold)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: DropdownButton(
                      iconDisabledColor: Colors.black,
                      iconEnabledColor: Colors.green,
                      value: vm.selectedProjectStatusItem.value,
                      isExpanded: true,
                      items: vm.projectStatusList
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
                        vm.selectedProjectStatusItem.value = value!;
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: Text(AppStrings.lblLab.tr,
                        style: const TextStyle(
                            fontSize: 14,
                            fontFamily: AppTextConstant.poppinsBold)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: DropdownButton(
                      iconDisabledColor: Colors.black,
                      iconEnabledColor: Colors.green,
                      value: vm.selectedLabItem.value,
                      isExpanded: true,
                      items: vm.labList
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
                        vm.selectedLabItem.value = value!;
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: Text(AppStrings.lblProjectManager.tr,
                        style: const TextStyle(
                            fontSize: 14,
                            fontFamily: AppTextConstant.poppinsBold)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: DropdownButton(
                      iconDisabledColor: Colors.black,
                      iconEnabledColor: Colors.green,
                      value: vm.selectedProjectManagerItem.value,
                      isExpanded: true,
                      items: vm.projectManagerList
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
                        vm.selectedProjectManagerItem.value = value!;
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: Text(AppStrings.lblProjectDateFrom.tr,
                        style: const TextStyle(
                            fontSize: 14,
                            fontFamily: AppTextConstant.poppinsBold)),
                  ),
                  Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            enabled: false,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              label: Text("",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontFamily:
                                          AppTextConstant.poppinsRegular)),
                            ),
                          ),
                        ),
                      ),
                      IconButton(
                          onPressed: () {}, icon: const Icon(Icons.date_range))
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: Text(AppStrings.lblProjectDateTo.tr,
                        style: const TextStyle(
                            fontSize: 14,
                            fontFamily: AppTextConstant.poppinsBold)),
                  ),
                  Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            enabled: false,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              label: Text("",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontFamily:
                                          AppTextConstant.poppinsRegular)),
                            ),
                          ),
                        ),
                      ),
                      IconButton(
                          onPressed: () {}, icon: const Icon(Icons.date_range))
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        hintText: AppStrings.hintEnterFreeText.tr,
                        hintStyle: const TextStyle(
                            fontFamily: AppTextConstant.poppinsRegular),
                        label: Text(AppStrings.lblFreeText.tr,
                            style: const TextStyle(
                                fontSize: 12,
                                fontFamily: AppTextConstant.poppinsRegular)),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: OutlinedButton(
                            child: Text(AppStrings.lblClear.tr,
                                style: const TextStyle(
                                    fontSize: 12,
                                    fontFamily: AppTextConstant.poppinsBold)),
                            onPressed: () {
                              Get.to(const NRDScreen());
                            }),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: OutlinedButton(
                            child: Text(AppStrings.lblSearch.tr,
                                style: const TextStyle(
                                    fontSize: 12,
                                    fontFamily: AppTextConstant.poppinsBold)),
                            onPressed: () {
                              if (kDebugMode) {
                                print(
                                    "Selected Project Type Item ${vm.selectedProjectTypeItem.value}");
                              }
                              if (vm.selectedProjectTypeItem.value ==
                                  AppStrings.nrd.tr) {
                                Get.to(const NRDScreen());
                              } else if (vm.selectedProjectTypeItem.value ==
                                  AppStrings.rch.tr) {
                                Get.to(const RCHScreen());
                              }
                            }),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
