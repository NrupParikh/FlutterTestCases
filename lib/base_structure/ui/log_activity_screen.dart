import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/base_structure/base/base_screen.dart';
import 'package:flutter_application_1/base_structure/constants/app_colors.dart';
import 'package:flutter_application_1/base_structure/vm/log_activity_view_model.dart';
import 'package:get/get.dart';
import 'package:tuple/tuple.dart';

import '../../main.dart';
import '../constants/app_text_constant.dart';

class LogActivityScreen extends BaseScreen<LogActivityViewModel> {
  const LogActivityScreen({super.key});

  @override
  Widget buildScreen(BuildContext context) {
    return Obx(() => Container(
          color: ColorConstant.backgroundBlueColor,
          child: Column(
            children: [
              Switch(
                  value: isBurned.value,
                  onChanged: (value) {
                    isBurned.value = value;
                  }),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  controller: vm.calController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    disabledBorder: OutlineInputBorder(),
                    hintText: "Enter calories",
                    hintStyle:
                        TextStyle(fontFamily: AppTextConstant.poppinsRegular),
                    label: Text("Calories",
                        style: TextStyle(
                            fontSize: 12,
                            fontFamily: AppTextConstant.poppinsRegular)),
                  ),
                  onFieldSubmitted: (submittedValue) {
                    if (kDebugMode) {
                      vm.calController.clear();
                      Get.back(result: Tuple2(isBurned.value, submittedValue));
                    }
                  },
                ),
              ),
            ],
          ),
        ));
  }
}
