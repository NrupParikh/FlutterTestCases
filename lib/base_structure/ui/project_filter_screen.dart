import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/base_structure/base/base_screen.dart';
import 'package:flutter_application_1/base_structure/constants/app_text_constant.dart';
import 'package:flutter_application_1/base_structure/ui/nrd_screen.dart';
import 'package:flutter_application_1/base_structure/ui/rch_screen.dart';
import 'package:flutter_application_1/base_structure/utils/utils.dart';
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
                  const SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: DropdownButtonFormField<String>(
                      dropdownColor: Colors.green,
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
                  const SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: DropdownButtonFormField<String>(
                      dropdownColor: Colors.green,
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
                  const SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: DropdownButtonFormField<String>(
                      dropdownColor: Colors.green,
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
                  const SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: DropdownButtonFormField<String>(
                      dropdownColor: Colors.green,
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
                            decoration: InputDecoration(
                              border: const OutlineInputBorder(),
                              disabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey)),
                              label: Text(vm.selectedFromDate.value,
                                  style: const TextStyle(
                                      fontSize: 12,
                                      fontFamily:
                                          AppTextConstant.poppinsRegular)),
                            ),
                          ),
                        ),
                      ),
                      IconButton(
                          onPressed: () async {
                            DateTime? pickedDate = await openDateTimePicker(
                                context,
                                AppStrings.lblProjectDateFrom.tr,
                                DateTime.now(),
                                DateTime.now(),
                                DateTime(2101));

                            if (kDebugMode) {
                              // 2024-10-11 00:00:00.000
                              print("Date Time $pickedDate");
                            }
                            String formattedDate =
                                getDateInddMMyyyy(pickedDate);
                            vm.selectedFromDate.value =
                                formattedDate.toString();
                          },
                          icon: const Icon(Icons.date_range))
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
                            decoration: InputDecoration(
                              border: const OutlineInputBorder(),
                              disabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey)),
                              label: Text(vm.selectedToDate.value,
                                  style: const TextStyle(
                                      fontSize: 12,
                                      fontFamily:
                                          AppTextConstant.poppinsRegular)),
                            ),
                          ),
                        ),
                      ),
                      IconButton(
                          onPressed: () async {
                            DateTime? pickedDate = await openDateTimePicker(
                                context,
                                AppStrings.lblProjectDateTo.tr,
                                DateTime.now(),
                                DateTime.now(),
                                DateTime(2101));

                            if (kDebugMode) {
                              // 2024-10-11 00:00:00.000
                              print("Date Time $pickedDate");
                            }
                            String formattedDate =
                                getDateInddMMyyyy(pickedDate);
                            vm.selectedToDate.value = formattedDate.toString();
                          },
                          icon: const Icon(Icons.date_range))
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        disabledBorder: const OutlineInputBorder(),
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
                            child: Text(AppStrings.lblClear.tr),
                            onPressed: () {
                              Get.to(const NRDScreen());
                            }),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: OutlinedButton(
                            child: Text(AppStrings.lblSearch.tr),
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
