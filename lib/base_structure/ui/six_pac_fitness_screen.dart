import 'package:flutter/material.dart';
import 'package:flutter_application_1/base_structure/base/base_screen.dart';
import 'package:flutter_application_1/base_structure/constants/app_colors.dart';

import '../vm/six_pac_fitness_view_model.dart';

class SixPacFitnessScreen extends BaseScreen<SixPacFitnessViewModel> {
  const SixPacFitnessScreen({super.key});

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
            "Fitness",
            style: TextStyle(fontSize: 48, color: Colors.white),
          ),
        ));
  }
}
