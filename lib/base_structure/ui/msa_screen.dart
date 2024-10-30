import 'package:flutter/material.dart';
import 'package:flutter_application_1/base_structure/base/base_screen.dart';
import 'package:flutter_application_1/base_structure/constants/app_strings.dart';
import 'package:flutter_application_1/base_structure/ui/purchasing_screen.dart';
import 'package:flutter_application_1/base_structure/vm/msa_view_model.dart';
import 'package:get/get.dart';

import 'qc_inspection.dart';

class MSAScreen extends BaseScreen<MSAViewModel> {
  const MSAScreen({super.key});

  @override
  Widget buildScreen(BuildContext context) {

    List<Tab> tabs = [
      Tab(
        child: Text(AppStrings.tabHaccp.tr),
      ),
      Tab(
        child: Text(AppStrings.tabQuality.tr),
      ),
      Tab(
        child: Text(AppStrings.tabPurchasing.tr),
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
        body: TabBarView(children: [
          Center(
            child: Text(AppStrings.tabHaccp.tr),
          ),
          const QCInspectionScreen(),
          const PurchasingScreen(),
        ]),
      ),
    );
  }
}
