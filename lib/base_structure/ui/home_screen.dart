import 'package:flutter/material.dart';
import 'package:flutter_application_1/base_structure/base/base_screen.dart';
import 'package:flutter_application_1/base_structure/constants/app_strings.dart';
import 'package:flutter_application_1/base_structure/vm/sample_view_model.dart';
import 'package:get/get.dart';

class HomeScreen extends BaseScreen<SampleViewModel> {
  HomeScreen({super.key});

  @override
  Widget buildScreen(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
            () =>
                Text("${AppStrings.lblFirstName.tr} : ${vm.firstName.string}\n"
                    "${AppStrings.lblEmail.tr} : ${vm.email.string}\n"),
          ),
          Obx(
            () => Text(vm.count.string, style: context.textTheme.displayLarge),
          ),
        ],
      ),
    );
  }

  @override
  Widget? get buildFloatingActionButton => FloatingActionButton(
      onPressed: () {
        vm.increaseCount();
      },
      child: const Icon(Icons.add));
}
