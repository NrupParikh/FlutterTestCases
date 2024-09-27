import 'package:flutter/material.dart';
import 'package:flutter_application_1/base_structure/base/base_screen.dart';
import 'package:flutter_application_1/base_structure/constants/app_strings.dart';
import 'package:get/get.dart';

import '../constants/app_text_constant.dart';
import '../vm/nrd_view_model.dart';

class NRDScreen extends BaseScreen<NRDViewModel> {
  NRDScreen({super.key});

  @override
  Widget buildScreen(BuildContext context) {
    List<Tab> tabs = [
      Tab(
        child: Text(AppStrings.tabRND.tr,
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
                    isScrollable: true,
                    indicatorColor: Colors.black,
                    unselectedLabelColor: Colors.grey,
                    tabs: tabs,
                  ),
                ],
              ),
            ),
            body: TabBarView(children: [
              Center(
                child: Text(AppStrings.tabRND.tr),
              ),
              Center(
                child: Text(AppStrings.tabIndustrialTrial.tr),
              ),
              Center(
                child: Text(AppStrings.tabHaccp.tr),
              ),
              Center(
                child: Text(AppStrings.tabQcInspection.tr),
              ),
              Center(
                child: Text(AppStrings.tabPurchasingReview.tr),
              )
            ]),
          ),
        ));
  }
}
