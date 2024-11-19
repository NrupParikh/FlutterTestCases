import 'package:flutter/material.dart';
import 'package:flutter_application_1/base_structure/base/base_screen.dart';
import 'package:flutter_application_1/base_structure/constants/app_strings.dart';
import 'package:flutter_application_1/base_structure/vm/haccp.dart';
import 'package:get/get.dart';

import '../constants/app_text_constant.dart';

class HACCPScreen extends BaseScreen<HACCPViewModel> {
  const HACCPScreen({super.key});

  @override
  Widget buildScreen(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  title: Text(AppStrings.lblIncludeInHACCPplan.tr),
                  value: false,
                  onChanged: (value) {}),
              CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  title: Text(AppStrings.lblMicroAnalysisNeeded.tr),
                  value: false,
                  onChanged: (value) {}),
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
                    hintText: AppStrings.hintEnterMicroAnalysisReq.tr,
                    hintStyle: const TextStyle(
                      fontFamily: AppTextConstant.poppinsRegular,
                    ),
                    label: Text(AppStrings.lblMicroAnalysisReq.tr,
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
                    hintText: AppStrings.hintEnterChemicalAnalysisReq.tr,
                    hintStyle: const TextStyle(
                      fontFamily: AppTextConstant.poppinsRegular,
                    ),
                    label: Text(AppStrings.lblChemicalAnalysisReq.tr,
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
                    hintText: AppStrings.hintEnterAllergenAnalysisReq.tr,
                    hintStyle: const TextStyle(
                      fontFamily: AppTextConstant.poppinsRegular,
                    ),
                    label: Text(AppStrings.lblAllergenAnalysisReq.tr,
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
