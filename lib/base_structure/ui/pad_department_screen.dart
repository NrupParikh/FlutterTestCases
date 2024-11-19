import 'package:flutter/material.dart';
import 'package:flutter_application_1/base_structure/base/base_screen.dart';
import 'package:flutter_application_1/base_structure/constants/app_strings.dart';
import 'package:flutter_application_1/base_structure/ui/pad_finance_screen.dart';
import 'package:flutter_application_1/base_structure/ui/pad_production_screen.dart';
import 'package:flutter_application_1/base_structure/ui/pad_purchasing_screen.dart';
import 'package:flutter_application_1/base_structure/ui/pad_wherehouse_screen.dart';
import 'package:flutter_application_1/base_structure/vm/pad_department_view_model.dart';
import 'package:get/get.dart';

class PadDepartmentScreen extends BaseScreen<PadDepartmentViewModel> {
  const PadDepartmentScreen({super.key});

  @override
  Widget buildScreen(BuildContext context) {
    List<Tab> tabs = [
      Tab(
        child: Text(AppStrings.tabFinance.tr),
      ),
      Tab(
        child: Text(AppStrings.tabPurchasing.tr),
      ),
      Tab(
        child: Text(AppStrings.tabProduction.tr),
      ),
      Tab(
        child: Text(AppStrings.tabWherehouse.tr),
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
          PADFinanceScreen(),
          PADPurchasingScreen(),
          PADProductionScreen(),
          PADWherehouseScreen()
        ]),
      ),
    );
  }
}
