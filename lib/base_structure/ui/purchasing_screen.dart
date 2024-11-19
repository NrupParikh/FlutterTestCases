import 'package:flutter/material.dart';
import 'package:flutter_application_1/base_structure/base/base_screen.dart';
import 'package:flutter_application_1/base_structure/constants/app_strings.dart';
import 'package:flutter_application_1/base_structure/vm/purchasing_view_model.dart';
import 'package:get/get.dart';

import '../constants/app_text_constant.dart';

class PurchasingScreen extends BaseScreen<PurchasingViewModel> {
  const PurchasingScreen({super.key});

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
                    child: Text(AppStrings.lblPackType.tr,
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
                      value: vm.selectedPackTypeItem.value,
                      isExpanded: true,
                      items: vm.packTypeList
                          .map<DropdownMenuItem<String>>((String item) {
                        return DropdownMenuItem(
                          value: item,
                          child: Text(
                            item,
                            style: TextStyle(
                              color: vm.selectedPackTypeItem.value == item
                                  ? Colors.green
                                  : Colors.white,
                              fontSize: 14,
                              fontFamily: AppTextConstant.poppinsRegular,
                            ),
                          ),
                        );
                      }).toList(),
                      onChanged: (String? value) {
                        vm.selectedPackTypeItem.value = value!;
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: Text(AppStrings.lblPalletType.tr,
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
                      value: vm.selectedPalletTypeItem.value,
                      isExpanded: true,
                      items: vm.palletTypeList
                          .map<DropdownMenuItem<String>>((String item) {
                        return DropdownMenuItem(
                          value: item,
                          child: Text(item,
                              style: TextStyle(
                                  color: vm.selectedPalletTypeItem.value == item
                                      ? Colors.green
                                      : Colors.white,
                                  fontSize: 14,
                                  fontFamily: AppTextConstant.poppinsRegular)),
                        );
                      }).toList(),
                      onChanged: (String? value) {
                        vm.selectedPalletTypeItem.value = value!;
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        disabledBorder: const OutlineInputBorder(),
                        hintText: AppStrings.hintEnterMoQ.tr,
                        hintStyle: const TextStyle(
                            fontFamily: AppTextConstant.poppinsRegular),
                        label: Text(AppStrings.lblMoQ.tr,
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
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        disabledBorder: const OutlineInputBorder(),
                        hintText: AppStrings.hintEnterBagWeight.tr,
                        hintStyle: const TextStyle(
                            fontFamily: AppTextConstant.poppinsRegular),
                        label: Text(AppStrings.lblBagWeightKg.tr,
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
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        disabledBorder: const OutlineInputBorder(),
                        hintText: AppStrings.hintEnterPalletWeight.tr,
                        hintStyle: const TextStyle(
                            fontFamily: AppTextConstant.poppinsRegular),
                        label: Text(AppStrings.lblPalletWieightKg.tr,
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
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        disabledBorder: const OutlineInputBorder(),
                        hintText: AppStrings.hintEnterMinLevel.tr,
                        hintStyle: const TextStyle(
                            fontFamily: AppTextConstant.poppinsRegular),
                        label: Text(AppStrings.lblMinLevel.tr,
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
                    child: Text(AppStrings.lblMajorCode.tr,
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
                      value: vm.selectedMajorCodeTypeItem.value,
                      isExpanded: true,
                      items: vm.majorCodeList
                          .map<DropdownMenuItem<String>>((String item) {
                        return DropdownMenuItem(
                          value: item,
                          child: Text(item,
                              style: TextStyle(
                                  color:
                                      vm.selectedMajorCodeTypeItem.value == item
                                          ? Colors.green
                                          : Colors.white,
                                  fontSize: 14,
                                  fontFamily: AppTextConstant.poppinsRegular)),
                        );
                      }).toList(),
                      onChanged: (String? value) {
                        vm.selectedMajorCodeTypeItem.value = value!;
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: Text(AppStrings.lblMinorCode.tr,
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
                      value: vm.selectedMinorCodeTypeItem.value,
                      isExpanded: true,
                      items: vm.minorCodeList
                          .map<DropdownMenuItem<String>>((String item) {
                        return DropdownMenuItem(
                          value: item,
                          child: Text(item,
                              style: TextStyle(
                                  color:
                                      vm.selectedMinorCodeTypeItem.value == item
                                          ? Colors.green
                                          : Colors.white,
                                  fontSize: 14,
                                  fontFamily: AppTextConstant.poppinsRegular)),
                        );
                      }).toList(),
                      onChanged: (String? value) {
                        vm.selectedMinorCodeTypeItem.value = value!;
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        disabledBorder: const OutlineInputBorder(),
                        hintText: AppStrings.hintEnterLeadTimeDD.tr,
                        hintStyle: const TextStyle(
                            fontFamily: AppTextConstant.poppinsRegular),
                        label: Text(AppStrings.lblLeadTimeDD.tr,
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
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        disabledBorder: const OutlineInputBorder(),
                        hintText: AppStrings.hintEnterPalletHeight.tr,
                        hintStyle: const TextStyle(
                            fontFamily: AppTextConstant.poppinsRegular),
                        label: Text(AppStrings.lblPalletHeightCM.tr,
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
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        disabledBorder: const OutlineInputBorder(),
                        hintText: AppStrings.hintEnterBagsOrPallet.tr,
                        hintStyle: const TextStyle(
                            fontFamily: AppTextConstant.poppinsRegular),
                        label: Text(AppStrings.lblBagsOrPallet.tr,
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
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      keyboardType: TextInputType.multiline,
                      maxLines: 4,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        disabledBorder: const OutlineInputBorder(),
                        hintText: AppStrings.hintEnterSupplyLimitations.tr,
                        hintStyle: const TextStyle(
                          fontFamily: AppTextConstant.poppinsRegular,
                        ),
                        label: Text(AppStrings.lblSupplyLimitations.tr,
                            style: const TextStyle(
                                fontSize: 12,
                                fontFamily: AppTextConstant.poppinsRegular)),
                      ),
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
                              side: const BorderSide(color: Colors.green)),
                          onPressed: () {},
                          child: Text(AppStrings.lblSave.tr)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
