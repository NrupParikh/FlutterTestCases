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
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Project Filter",
              style: TextStyle(
                  fontSize: 12, fontFamily: AppTextConstant.poppinsMedium),
            ),
            const SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: OutlinedButton(
                      child: Text(AppStrings.lblNRD.tr,
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
                      child: Text(AppStrings.lblRCH.tr,
                          style: const TextStyle(
                              fontSize: 12,
                              fontFamily: AppTextConstant.poppinsBold)),
                      onPressed: () {
                        Get.to(const RCHScreen());
                      }),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
