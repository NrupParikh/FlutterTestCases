import 'package:flutter/material.dart';
import 'package:flutter_application_1/base_structure/base/base_screen.dart';
import 'package:flutter_application_1/base_structure/constants/app_strings.dart';
import 'package:get/get.dart';

import '../constants/app_text_constant.dart';
import '../vm/qc_inspection_view_model.dart';

class QCInspectionScreen extends BaseScreen<QCInspectionViewModel> {
  const QCInspectionScreen({super.key});

  @override
  Widget buildScreen(BuildContext context) {
    return Obx(() => SingleChildScrollView(
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(AppStrings.lblQcAnalysis.tr,
                      style: const TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 14,
                          fontFamily: AppTextConstant.poppinsBold)),
                ),
                const SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: Text(AppStrings.lblQcInspectionPlan.tr,
                      style: const TextStyle(
                          fontSize: 14,
                          fontFamily: AppTextConstant.poppinsRegular)),
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
                        borderSide: BorderSide(color: Colors.grey, width: 2.00),
                      ),
                    ),
                    value: vm.selectedQcInspectionItem.value,
                    isExpanded: true,
                    items: vm.qcInspectionList
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
                      vm.selectedQcInspectionItem.value = value!;
                    },
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      disabledBorder: const OutlineInputBorder(),
                      hintText: AppStrings.hintEnterQcDays.tr,
                      hintStyle: const TextStyle(
                          fontFamily: AppTextConstant.poppinsRegular),
                      label: Text(AppStrings.lblQcDays.tr,
                          style: const TextStyle(
                              fontSize: 12,
                              fontFamily: AppTextConstant.poppinsRegular)),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(AppStrings.lblSamplingPlan.tr,
                      style: const TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 14,
                          fontFamily: AppTextConstant.poppinsBold)),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: Text(AppStrings.lblReqiredSamplingPlan.tr,
                      style: const TextStyle(
                          fontSize: 14,
                          fontFamily: AppTextConstant.poppinsRegular)),
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
                        borderSide: BorderSide(color: Colors.grey, width: 2.00),
                      ),
                    ),
                    value: vm.selectedSamplingPlanItem.value,
                    isExpanded: true,
                    items: vm.samplingPlanlist
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
                      vm.selectedSamplingPlanItem.value = value!;
                    },
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: OutlinedButton(
                        child: Text(AppStrings.updateQC.tr), onPressed: () {}),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
