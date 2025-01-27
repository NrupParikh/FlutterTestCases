import 'package:flutter/material.dart';
import 'package:flutter_application_1/base_structure/base/base_screen.dart';
import 'package:flutter_application_1/base_structure/constants/app_colors.dart';
import 'package:flutter_application_1/base_structure/vm/six_pac_global_feed_view_model.dart';

class SixPacGlobalFeedScreen extends BaseScreen<SixPacGlobalFeedViewModel> {
  const SixPacGlobalFeedScreen({super.key});

  @override
  Widget buildScreen(BuildContext context) {
  vm.updateSocialOption(0);

    return Container(
      color: ColorConstant.backgroundBlueColor,
      child: const Center(
          child: Text(
        "Global Feed",
        style: TextStyle(fontSize: 32, color: Colors.green),
      )),
    );
  }
}
