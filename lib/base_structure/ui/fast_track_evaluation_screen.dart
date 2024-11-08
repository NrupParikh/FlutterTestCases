import 'package:flutter/material.dart';
import 'package:flutter_application_1/base_structure/base/base_screen.dart';
import 'package:flutter_application_1/base_structure/constants/app_strings.dart';
import 'package:flutter_application_1/base_structure/ui/rch_quality_screen.dart';
import 'package:flutter_application_1/base_structure/ui/rch_regulatory_screen.dart';
import 'package:flutter_application_1/base_structure/ui/rch_rnd_creen.dart';
import 'package:get/get.dart';

import '../vm/fast_track_evaluation_view_model.dart';

class FastTrackEvaluationScreen
    extends BaseScreen<FastTrackEvaluationViewModel> {
  const FastTrackEvaluationScreen({super.key});

  @override
  Widget buildScreen(BuildContext context) {
    List<Tab> tabs = [
      Tab(
        child: Text(AppStrings.tabRND.tr),
      ),
      Tab(
        child: Text(AppStrings.tabQuality.tr),
      ),
      Tab(
        child: Text(AppStrings.tabRegulatory.tr),
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
                tabAlignment: TabAlignment.fill,
                isScrollable: false,
                tabs: tabs,
              ),
            ],
          ),
        ),
        body: const TabBarView(children: [
          RchRndScreen(),
          RchQualityScreen(),
          RchRegulatoryScreen()
        ]),
      ),
    );
  }
}
