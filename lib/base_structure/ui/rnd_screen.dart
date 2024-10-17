
import 'package:flutter/material.dart';
import 'package:flutter_application_1/base_structure/base/base_screen.dart';
import 'package:flutter_application_1/base_structure/constants/app_strings.dart';
import 'package:get/get.dart';

import '../constants/app_text_constant.dart';
import '../vm/rnd_view_model.dart';

class RNDScreen extends BaseScreen<RNDViewModel> {
  const RNDScreen({super.key});

  @override
  Widget buildScreen(BuildContext context) {
    return Form(
          child: Column(
            children: [
              CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  title: Text(AppStrings.approve.tr),
                  value: false,
                  onChanged: (value) {}),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    disabledBorder: const OutlineInputBorder(),
                    hintText: AppStrings.hintEnterComment.tr,
                    hintStyle: const TextStyle(
                        fontFamily: AppTextConstant.poppinsRegular),
                    label: Text(AppStrings.comment.tr,
                        style: const TextStyle(
                            fontSize: 12,
                            fontFamily: AppTextConstant.poppinsRegular)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    OutlinedButton(
                        child: Text(AppStrings.approve.tr),
                        onPressed: () {}),
                    OutlinedButton(
                        child: Text(AppStrings.reject.tr),
                        onPressed: () {}),
                  ],
                ),
              )
            ],
          ),
        );
  }
}
