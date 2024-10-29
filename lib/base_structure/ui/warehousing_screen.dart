import 'package:flutter/material.dart';
import 'package:flutter_application_1/base_structure/base/base_screen.dart';
import 'package:flutter_application_1/base_structure/vm/warehousing_view_model.dart';
import 'package:get/get.dart';

import '../constants/app_strings.dart';
import '../constants/app_text_constant.dart';

class WarehousingScreen extends BaseScreen<WarehousingViewModel> {
  const WarehousingScreen({super.key});

  @override
  Widget buildScreen(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             Text(AppStrings.lblPackType.tr,
                 style: const TextStyle(
                     fontSize: 14,
                     fontFamily: AppTextConstant.poppinsBold)),
                  const SizedBox(
                    height: 16,
                  ),
                  
          ],),
        ),
      ),
    );
  }
}
