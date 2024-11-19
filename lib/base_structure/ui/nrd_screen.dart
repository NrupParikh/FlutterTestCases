import 'package:flutter/material.dart';
import 'package:flutter_application_1/base_structure/base/base_screen.dart';
import 'package:flutter_application_1/base_structure/constants/app_strings.dart';
import 'package:flutter_application_1/base_structure/ui/industrial_trial_screen.dart';
import 'package:flutter_application_1/base_structure/ui/purchasing_review_screen.dart';
import 'package:flutter_application_1/base_structure/ui/qc_inspection.dart';
import 'package:flutter_application_1/base_structure/ui/rnd_screen.dart';
import 'package:get/get.dart';

import '../vm/nrd_view_model.dart';
import 'haccp.dart';

class NRDScreen extends BaseScreen<NRDViewModel> {
  const NRDScreen({super.key});

  @override
  Widget buildScreen(BuildContext context) {
    List<Tab> tabs = [
      Tab(
        child: Text(AppStrings.tabRND.tr),
      ),
      Tab(
        child: Text(AppStrings.tabIndustrialTrial.tr),
      ),
      Tab(
        child: Text(AppStrings.tabHaccp.tr),
      ),
      Tab(
        child: Text(AppStrings.tabQcInspection.tr),
      ),
      Tab(
        child: Text(AppStrings.tabPurchasingReview.tr),
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
              TabBar(
                tabAlignment: TabAlignment.center,
                isScrollable: true,
                tabs: tabs,
              ),
            ],
          ),
        ),
        body: const TabBarView(children: [
          RNDScreen(),
          IndustrialTrialScreen(),
          HACCPScreen(),
          QCInspectionScreen(),
          PurchasingReviewScreen()
        ]),
      ),
    );
  }
}
