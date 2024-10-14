import 'package:flutter/material.dart';
import 'package:flutter_application_1/base_structure/base/base_screen.dart';
import 'package:flutter_application_1/base_structure/constants/app_strings.dart';
import 'package:flutter_application_1/base_structure/ui/qc_inspection.dart';
import 'package:flutter_application_1/base_structure/vm/rch_view_model.dart';
import 'package:get/get.dart';

import '../constants/app_text_constant.dart';
import 'fast_track_evaluation_screen.dart';

class RCHScreen extends BaseScreen<RCHViewModel> {
  const RCHScreen({super.key});

  @override
  Widget buildScreen(BuildContext context) {
    List<Tab> tabs = [
      Tab(
        child: Text(AppStrings.tabRND.tr,
            style: const TextStyle(
                fontSize: 12, fontFamily: AppTextConstant.poppinsBold)),
      ),
      Tab(
        child: Text(AppStrings.tabFasttrackEvoluation.tr,
            style: const TextStyle(
                fontSize: 12, fontFamily: AppTextConstant.poppinsBold)),
      ),
      Tab(
        child: Text(AppStrings.tabIndustrialReview.tr,
            style: const TextStyle(
                fontSize: 12, fontFamily: AppTextConstant.poppinsBold)),
      ),
      Tab(
        child: Text(AppStrings.tabIndustrialTrial.tr,
            style: const TextStyle(
                fontSize: 12, fontFamily: AppTextConstant.poppinsBold)),
      ),
      Tab(
        child: Text(AppStrings.tabHaccp.tr,
            style: const TextStyle(
                fontSize: 12, fontFamily: AppTextConstant.poppinsBold)),
      ),
      Tab(
        child: Text(AppStrings.tabQcInspection.tr,
            style: const TextStyle(
                fontSize: 12, fontFamily: AppTextConstant.poppinsBold)),
      ),
      Tab(
        child: Text(AppStrings.tabPurchasingReview.tr,
            style: const TextStyle(
                fontSize: 12, fontFamily: AppTextConstant.poppinsBold)),
      ),
    ];

    return DefaultTabController(
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
              ColoredBox(
                color: Theme.of(context).colorScheme.primaryContainer,
                child: TabBar(
                  tabAlignment: TabAlignment.center,
                  isScrollable: true,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicatorColor: Theme.of(context).primaryColor,
                  unselectedLabelColor: Theme.of(context).colorScheme.inversePrimary,
                  tabs: tabs,
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(children: [
          Center(
            child: Text(AppStrings.tabRND.tr),
          ),
          const Center(child: FastTrackEvaluationScreen()),
          Center(
            child: Text(AppStrings.tabIndustrialReview.tr),
          ),
          Center(
            child: Text(AppStrings.tabIndustrialTrial.tr),
          ),
          Center(
            child: Text(AppStrings.tabHaccp.tr),
          ),
          const Center(
            child: Center(child: QCInspectionScreen()),
          ),
          Center(
            child: Text(AppStrings.tabPurchasingReview.tr),
          )
        ]),
      ),
    );
  }
}
