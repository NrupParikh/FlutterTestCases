import 'package:flutter/material.dart';
import 'package:flutter_application_1/base_structure/base/base_screen.dart';
import 'package:flutter_application_1/base_structure/vm/industrial_trial_view_model.dart';
import 'package:get/get.dart';

import '../constants/app_strings.dart';
import '../constants/app_text_constant.dart';

class IndustrialTrialScreen extends BaseScreen<IndustrialTrialViewModel> {
  const IndustrialTrialScreen({super.key});

  @override
  Widget buildScreen(BuildContext context) {
    return Obx(() => SingleChildScrollView(
          child: Form(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CheckboxListTile(
                      controlAffinity: ListTileControlAffinity.leading,
                      title: Text(AppStrings.lblIndustrialTrialSuccessFul.tr),
                      value: false,
                      onChanged: (value) {}),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      keyboardType: TextInputType.multiline,
                      maxLines: 4,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        disabledBorder: const OutlineInputBorder(),
                        hintText: AppStrings.hintEnterProcessInstructions.tr,
                        hintStyle: const TextStyle(
                          fontFamily: AppTextConstant.poppinsRegular,
                        ),
                        label: Text(AppStrings.lblProcessInstructions.tr,
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
                      value: vm.selectedPorductionLineGroupItem.value,
                      isExpanded: true,
                      items: vm.productionLineGroupList
                          .map<DropdownMenuItem<String>>((String item) {
                        return DropdownMenuItem(
                          value: item,
                          child: Text(item,
                              style: TextStyle(
                                  color: vm.selectedPorductionLineGroupItem
                                              .value ==
                                          item
                                      ? Colors.green
                                      : Colors.white,
                                  fontSize: 14,
                                  fontFamily: AppTextConstant.poppinsRegular)),
                        );
                      }).toList(),
                      onChanged: (String? value) {
                        vm.selectedPorductionLineGroupItem.value = value!;
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      keyboardType: TextInputType.multiline,
                      maxLines: 4,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        disabledBorder: const OutlineInputBorder(),
                        hintText:
                            AppStrings.hintEnterIndustrialTrialObservations.tr,
                        hintStyle: const TextStyle(
                          fontFamily: AppTextConstant.poppinsRegular,
                        ),
                        label: Text(
                            AppStrings.lblIndustrialTrialObservations.tr,
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
                    child: Align(
                      alignment: Alignment.center,
                      child: OutlinedButton(
                          child: Text(AppStrings.lblUpdateProduction.tr),
                          onPressed: () async {}),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
