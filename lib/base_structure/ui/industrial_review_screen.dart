import 'package:flutter/material.dart';
import 'package:flutter_application_1/base_structure/base/base_screen.dart';
import 'package:flutter_application_1/base_structure/vm/industrial_review_view_model.dart';
import 'package:get/get.dart';

import '../constants/app_strings.dart';
import '../constants/app_text_constant.dart';

class IndustrialReviewScreen extends BaseScreen<IndustrialReviewViewModel> {
  const IndustrialReviewScreen({super.key});

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
                      title: Text(AppStrings.lblIndustrialReviewSuccessFul.tr),
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
                        hintText: AppStrings.hintEnterIndustrialReviewObservations.tr,
                        hintStyle: const TextStyle(
                          fontFamily: AppTextConstant.poppinsRegular,
                        ),
                        label: Text(AppStrings.lblIndustrialReviewObservations.tr,
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
        );
  }
}