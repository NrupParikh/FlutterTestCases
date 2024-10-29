import 'package:flutter/material.dart';
import 'package:flutter_application_1/base_structure/base/base_screen.dart';
import 'package:flutter_application_1/base_structure/constants/app_strings.dart';
import 'package:flutter_application_1/base_structure/vm/pad_view_model.dart';
import 'package:get/get.dart';


class PADScreen extends BaseScreen<PADViewModel> {
  const PADScreen({super.key});

  @override
  Widget buildScreen(BuildContext context) {

    return Center(
            child: Text(AppStrings.pad.tr),
          );
  }
}
