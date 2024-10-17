import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/base_structure/base/base_screen.dart';
import 'package:flutter_application_1/base_structure/vm/project_management_view_model.dart';

import '../constants/app_text_constant.dart';

class ProjectManagementScreen extends BaseScreen<ProjectManagementViewModel> {
  const ProjectManagementScreen({super.key});

  @override
  Widget buildScreen(BuildContext context) {
    if (kDebugMode) {
      print("Total Projects ${vm.projects.length}");
    }

    return const Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Obx(
        //   () => Text("${AppStrings.lblFirstName.tr} : ${vm.firstName.string}\n"
        //       "${AppStrings.lblEmail.tr} : ${vm.email.string}\n"),
        // ),
        // Obx(
        //   () => Text(vm.count.string, style: context.textTheme.displayMedium),
        // ),
        SizedBox(
          height: 16,
        ),
        Card(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                        child: Text(
                      "Project",
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: AppTextConstant.poppinsMedium),
                    )),
                    Expanded(
                        child: Text(
                      "MAD2000534",
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: AppTextConstant.poppinsMedium),
                    )),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        child: Text(
                      "Lab",
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: AppTextConstant.poppinsMedium),
                    )),
                    Expanded(
                        child: Text(
                      "Parma",
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: AppTextConstant.poppinsMedium),
                    )),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        child: Text(
                      "Title",
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: AppTextConstant.poppinsMedium),
                    )),
                    Expanded(
                        child: Text(
                      "MAD SP1",
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: AppTextConstant.poppinsMedium),
                    )),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        child: Text(
                      "Project Manager",
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: AppTextConstant.poppinsMedium),
                    )),
                    Expanded(
                        child: Text(
                      "V.Dhani",
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: AppTextConstant.poppinsMedium),
                    )),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        child: Text(
                      "Date Opened",
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: AppTextConstant.poppinsMedium),
                    )),
                    Expanded(
                        child: Text(
                      "Apr-29-2024",
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: AppTextConstant.poppinsMedium),
                    )),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        child: Text(
                      "CRM Opportunity",
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: AppTextConstant.poppinsMedium),
                    )),
                    Expanded(
                        child: Text(
                      "PR6990",
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: AppTextConstant.poppinsMedium),
                    )),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  // @override
  // Widget? get buildFloatingActionButton => FloatingActionButton(
  //     onPressed: () {
  //       vm.increaseCount();
  //     },
  //     child: const Icon(Icons.add));
}
