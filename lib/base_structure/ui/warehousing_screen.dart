import 'package:flutter/material.dart';
import 'package:flutter_application_1/base_structure/base/base_screen.dart';
import 'package:flutter_application_1/base_structure/vm/warehousing_view_model.dart';
import 'package:get/get.dart';

import '../constants/app_strings.dart';
import '../constants/app_text_constant.dart';

class WarehousingScreen extends BaseScreen<WarehousingViewModel> {
  const WarehousingScreen({super.key});

  @override
  Widget buildScreen(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  keyboardType: TextInputType.multiline,
                  maxLines: 4,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    disabledBorder: const OutlineInputBorder(),
                    hintText: AppStrings.hintEnterPalletizationIssues.tr,
                    hintStyle: const TextStyle(
                      fontFamily: AppTextConstant.poppinsRegular,
                    ),
                    label: Text(AppStrings.lblPalletizationIssues.tr,
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
                    hintText: AppStrings.hintEnterWarehouseZone.tr,
                    hintStyle: const TextStyle(
                      fontFamily: AppTextConstant.poppinsRegular,
                    ),
                    label: Text(AppStrings.lblWarehouseZone.tr,
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
    );
  }
}
