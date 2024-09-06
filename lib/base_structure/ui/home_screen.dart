import 'package:flutter/material.dart';
import 'package:flutter_application_1/base_structure/base/base_screen.dart';
import 'package:flutter_application_1/base_structure/ui/login_screen.dart';
import 'package:flutter_application_1/base_structure/vm/sample_view_model.dart';
import 'package:get/get.dart';

class HomeScreen extends BaseScreen<SampleViewModel> {
  const HomeScreen({super.key});

  @override
  Widget buildScreen(BuildContext context) {
    return Center(
        child: Obx(
      () => Text(vm.count.string, style: context.textTheme.displayLarge),
    ));
  }

  @override
  Widget? get buildFloatingActionButton => FloatingActionButton(
      onPressed: () {
        // vm.increaseCount();
        Get.to(const LoginScreen());
      },
      child: const Icon(Icons.add));
}
