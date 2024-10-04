import 'package:flutter/material.dart';
import 'package:flutter_application_1/base_structure/base/base_screen.dart';
import 'package:flutter_application_1/base_structure/constants/app_strings.dart';
import 'package:flutter_application_1/base_structure/ui/rnd_screen.dart';
import 'package:get/get.dart';

import '../constants/app_text_constant.dart';
import '../vm/fast_track_evaluation_view_model.dart';

class FastTrackEvaluationScreen
    extends BaseScreen<FastTrackEvaluationViewModel> {
  FastTrackEvaluationScreen({super.key});

  @override
  Widget buildScreen(BuildContext context) {
    List<Tab> tabs = [
      Tab(
        child: Text(AppStrings.tabRND.tr,
            style: const TextStyle(
                fontSize: 12, fontFamily: AppTextConstant.poppinsBold)),
      ),
      Tab(
        child: Text(AppStrings.tabQuality.tr,
            style: const TextStyle(
                fontSize: 12, fontFamily: AppTextConstant.poppinsBold)),
      ),
      Tab(
        child: Text(AppStrings.tabRegulatory.tr,
            style: const TextStyle(
                fontSize: 12, fontFamily: AppTextConstant.poppinsBold)),
      ),
    ];
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: DefaultTabController(
          initialIndex: 0,
          length: tabs.length,
          child: Scaffold(
            appBar: AppBar(
              title: const Text(""),
              leading: const SizedBox(),
              elevation: 0,
              flexibleSpace: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TabBar(
                    tabAlignment: TabAlignment.fill,
                    isScrollable: false,
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicatorColor: Colors.black,
                    unselectedLabelColor: Colors.grey,
                    tabs: tabs,
                  ),
                ],
              ),
            ),
            body: TabBarView(children: [
              Center(
                child: RNDScreen(),
              ),
              Center(
                child: Text(AppStrings.tabQuality.tr),
              ),
              Center(
                child: Text(AppStrings.tabRegulatory.tr),
              )
            ]),
          ),
        ));
  }
}
