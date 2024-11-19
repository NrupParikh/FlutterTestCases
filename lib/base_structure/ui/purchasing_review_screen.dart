import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/base_structure/base/base_screen.dart';
import 'package:flutter_application_1/base_structure/constants/app_strings.dart';
import 'package:flutter_application_1/base_structure/vm/purchasing_review_view_model.dart';
import 'package:get/get.dart';

import '../constants/app_text_constant.dart';
import '../utils/utils.dart';

class PurchasingReviewScreen extends BaseScreen<PurchasingReviewViewModel> {
  const PurchasingReviewScreen({super.key});

  @override
  Widget buildScreen(BuildContext context) {
    return Obx(() => SingleChildScrollView(
          child: Form(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                        hintText: AppStrings.hintEnterPurchasingNotes.tr,
                        hintStyle: const TextStyle(
                          fontFamily: AppTextConstant.poppinsRegular,
                        ),
                        label: Text(AppStrings.lblPurchasingNotes.tr,
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
                        hintText: AppStrings.hintEnterChangePlan.tr,
                        hintStyle: const TextStyle(
                          fontFamily: AppTextConstant.poppinsRegular,
                        ),
                        label: Text(AppStrings.lblChangePlan.tr,
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
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: Text(AppStrings.lblPreferredDateForChange.tr,
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
                                AppStrings.lblPreferredDateForChange.tr,
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
                  const SizedBox(
                    height: 16,
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
