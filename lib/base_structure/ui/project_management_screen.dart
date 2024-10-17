import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/base_structure/base/base_screen.dart';
import 'package:flutter_application_1/base_structure/vm/project_management_view_model.dart';
import 'package:get/get.dart';

import '../constants/app_strings.dart';
import '../constants/app_text_constant.dart';

class ProjectManagementScreen extends BaseScreen<ProjectManagementViewModel> {
  const ProjectManagementScreen({super.key});

  @override
  Widget buildScreen(BuildContext context) {
    if (kDebugMode) {
      print("Total Projects ${vm.projects.length}");
    }

    return ListView.builder(
        itemCount: vm.projects.length,
        itemBuilder: (context, index) {
          final project = vm.projects[index];
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                          child: Text(
                        AppStrings.lblProject.tr,
                        style: const TextStyle(
                            fontSize: 14,
                            fontFamily: AppTextConstant.poppinsMedium),
                      )),
                      Expanded(
                          child: Text(
                        project.projectId.toString(),
                        style: const TextStyle(
                            fontSize: 12,
                            fontFamily: AppTextConstant.poppinsMedium),
                      )),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Text(
                        AppStrings.lblLab.tr,
                        style: const TextStyle(
                            fontSize: 14,
                            fontFamily: AppTextConstant.poppinsMedium),
                      )),
                      Expanded(
                          child: Text(
                        project.lab.toString(),
                        style: const TextStyle(
                            fontSize: 12,
                            fontFamily: AppTextConstant.poppinsMedium),
                      )),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Text(
                        AppStrings.lblTitle.tr,
                        style: const TextStyle(
                            fontSize: 14,
                            fontFamily: AppTextConstant.poppinsMedium),
                      )),
                      Expanded(
                          child: Text(
                        project.title.toString(),
                        style: const TextStyle(
                            fontSize: 12,
                            fontFamily: AppTextConstant.poppinsMedium),
                      )),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Text(
                        AppStrings.lblProjectManager.tr,
                        style: const TextStyle(
                            fontSize: 14,
                            fontFamily: AppTextConstant.poppinsMedium),
                      )),
                      Expanded(
                          child: Text(
                        project.projectManager.toString(),
                        style: const TextStyle(
                            fontSize: 12,
                            fontFamily: AppTextConstant.poppinsMedium),
                      )),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Text(
                        AppStrings.lblDateOpened.tr,
                        style: const TextStyle(
                            fontSize: 14,
                            fontFamily: AppTextConstant.poppinsMedium),
                      )),
                      Expanded(
                          child: Text(
                        project.dateOpened.toString(),
                        style: const TextStyle(
                            fontSize: 12,
                            fontFamily: AppTextConstant.poppinsMedium),
                      )),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Text(
                        AppStrings.lblCRMopportunity.tr,
                        style: const TextStyle(
                            fontSize: 14,
                            fontFamily: AppTextConstant.poppinsMedium),
                      )),
                      Expanded(
                          child: Text(
                        project.crmOpportunity.toString(),
                        style: const TextStyle(
                            fontSize: 12,
                            fontFamily: AppTextConstant.poppinsMedium),
                      )),
                    ],
                  )
                ],
              ),
            ),
          );
        });

    // return Center(
    //   child: Column(
    //     mainAxisAlignment: MainAxisAlignment.center,
    //     crossAxisAlignment: CrossAxisAlignment.center,
    //     children: [
    //       Obx(
    //         () => Text("${AppStrings.lblFirstName.tr} : ${vm.firstName.string}\n"
    //             "${AppStrings.lblEmail.tr} : ${vm.email.string}\n"),
    //       ),
    //       Obx(
    //         () => Text(vm.count.string, style: context.textTheme.displayMedium),
    //       ),

    //     ],
    //   ),
    // );
  }

  // @override
  // Widget? get buildFloatingActionButton => FloatingActionButton(
  //     onPressed: () {
  //       vm.increaseCount();
  //     },
  //     child: const Icon(Icons.add));
}
