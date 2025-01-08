import 'package:flutter/material.dart';
import 'package:flutter_application_1/base_structure/base/base_screen.dart';
import 'package:flutter_application_1/base_structure/constants/app_colors.dart';
import '../vm/six_pac_tab3_view_model.dart';

class SixPacTab3Screen extends BaseScreen<SixPacTab3ViewModel> {
  const SixPacTab3Screen({super.key});

  @override
  Widget buildScreen(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    return Container(
        width: deviceWidth,
        height: deviceHeight,
        color: ColorConstant.backgroundBlueColor,
        child: const Center(
          child: Text(
            "TAB3",
            style: TextStyle(fontSize: 48, color: Colors.white),
          ),
        ));
  }
}
