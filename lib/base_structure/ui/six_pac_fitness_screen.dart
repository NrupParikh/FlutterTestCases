import 'package:flutter/material.dart';
import 'package:flutter_application_1/base_structure/base/base_screen.dart';
import 'package:flutter_application_1/base_structure/constants/app_colors.dart';

import '../vm/six_pac_fitness_view_model.dart';

class SixPacFitnessScreen extends BaseScreen<SixPacFitnessViewModel> {
  const SixPacFitnessScreen({super.key});

  @override
  Widget buildScreen(BuildContext context) {
    List<Tab> tabs = [
      const Tab(
        child: Text("FOR YOU"),
      ),
      const Tab(
        child: Text("EXERCISE"),
      ),
      const Tab(
        child: Text("WORKOUT"),
      ),
      const Tab(
        child: Text("PLANS"),
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
                    tabs: tabs)
              ],
            ),
          ),
          body: TabBarView(children: [
            Container(
                color: ColorConstant.backgroundBlueColor,
                child: const Center(
                  child: Text(
                    "FOR YOU",
                    style: TextStyle(fontSize: 32, color: Colors.white),
                  ),
                )),
            Container(
                color: ColorConstant.backgroundBlueColor,
                child: const Center(
                  child: Text(
                    "EXERCISE",
                    style: TextStyle(fontSize: 32, color: Colors.white),
                  ),
                )),
            Container(
                color: ColorConstant.backgroundBlueColor,
                child: const Center(
                  child: Text(
                    "WORKOUT",
                    style: TextStyle(fontSize: 32, color: Colors.white),
                  ),
                )),
            Container(
                color: ColorConstant.backgroundBlueColor,
                child: const Center(
                  child: Text(
                    "PLANS",
                    style: TextStyle(fontSize: 32, color: Colors.white),
                  ),
                )),
          ]),
        ));
  }
}
