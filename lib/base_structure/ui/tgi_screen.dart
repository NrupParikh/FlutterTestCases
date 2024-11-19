import 'package:flutter/material.dart';
import 'package:flutter_application_1/base_structure/base/base_screen.dart';
import 'package:flutter_application_1/base_structure/constants/app_strings.dart';
import 'package:flutter_application_1/base_structure/ui/Warehousing_screen.dart';
import 'package:flutter_application_1/base_structure/ui/purchasing_screen.dart';
import 'package:flutter_application_1/base_structure/vm/tgi_view_model.dart';
import 'package:get/get.dart';

class TGIScreen extends BaseScreen<TGIViewModel> {
  const TGIScreen({super.key});

  @override
  Widget buildScreen(BuildContext context) {
    List<Tab> tabs = [
      Tab(
        child: Text(AppStrings.tabPurchasing.tr),
      ),
      Tab(
        child: Text(AppStrings.tabWarehousing.tr),
      )
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
          PurchasingScreen(),
          WarehousingScreen(),
        ]),
      ),
    );
  }
}
