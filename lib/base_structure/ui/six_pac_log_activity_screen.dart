import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/base_structure/base/base_screen.dart';
import 'package:flutter_application_1/base_structure/constants/app_colors.dart';
import 'package:flutter_application_1/base_structure/vm/six_pac_log_activity_view_model.dart';
import 'package:get/get.dart';
import 'package:tuple/tuple.dart';

import '../../main.dart';
import '../constants/app_text_constant.dart';

class SixPacLogActivityScreen extends BaseScreen<SixPacLogActivityViewModel> {
  const SixPacLogActivityScreen({super.key});

  @override
  Widget buildScreen(BuildContext context) {
    return Obx(() => Container(
          color: ColorConstant.backgroundBlueColor,
          child: Column(
            children: [
              Switch(
                activeColor: ColorConstant.blueColor,
                  value: isBurned.value,
                  onChanged: (value) {
                    isBurned.value = value;
                  }),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  cursorColor: ColorConstant.blueColor,
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  controller: vm.calController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: ColorConstant.blueColor)
                    ),
                    disabledBorder: const OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: ColorConstant.blueColor)
                    ),
                    hintText: "Enter calories",
                    hintStyle:
                        TextStyle(fontFamily: AppTextConstant.poppinsRegular,color: ColorConstant.blueColor),
                    label: const Text("Calories",
                        style: TextStyle(
                            fontSize: 12,
                            fontFamily: AppTextConstant.poppinsRegular)),
                            floatingLabelStyle: TextStyle(color: ColorConstant.blueColor)
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
