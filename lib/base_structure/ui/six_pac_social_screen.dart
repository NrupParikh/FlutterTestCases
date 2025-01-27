import 'package:flutter/material.dart';
import 'package:flutter_application_1/base_structure/base/base_screen.dart';
import 'package:flutter_application_1/base_structure/ui/six_pac_chat_screen.dart';
import 'package:flutter_application_1/base_structure/ui/six_pac_global_feed_screen.dart';
import 'package:flutter_application_1/base_structure/ui/six_pac_profile_screen.dart';
import 'package:flutter_application_1/base_structure/ui/six_pac_squads_screen.dart';
import 'package:flutter_application_1/base_structure/ui/six_pac_your_feed_screen.dart';
import 'package:get/get.dart';

import '../vm/six_pac_social_view_model.dart';

class SixPacSocialScreen extends BaseScreen<SixPacSocialViewModel> {
  const SixPacSocialScreen({super.key});

  @override
  Widget buildScreen(BuildContext context) {
    vm.updateTitleBasedOnIndex(vm.initialTabIndex.value);
    return Obx(() => DefaultTabController(
        initialIndex: vm.initialTabIndex.value,
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            title: const Text(""),
            leading: const SizedBox(),
            elevation: 0,
            flexibleSpace: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Builder(
                  builder: (context) {
                    final TabController tabController =
                        DefaultTabController.of(context);
                    return TabBar(
                      tabAlignment: TabAlignment.fill,
                      isScrollable: false,
                      tabs: [
                        Tab(
                          icon: Image.asset("assets/images/ic_globe.png",
                              width: 18,
                              height: 18,
                              color: tabController.index == 0
                                  ? Colors.green
                                  : Colors.white),
                        ),
                        Tab(
                          icon: Image.asset("assets/images/ic_second.png",
                              width: 18,
                              height: 18,
                              color: tabController.index == 1
                                  ? Colors.green
                                  : Colors.white),
                        ),
                        Tab(
                          icon: Image.asset("assets/images/ic_squads.png",
                              width: 18,
                              height: 18,
                              color: tabController.index == 2
                                  ? Colors.green
                                  : Colors.white),
                        ),
                        Tab(
                          icon: Image.asset("assets/images/ic_profile.png",
                              width: 18,
                              height: 18,
                              color: tabController.index == 3
                                  ? Colors.green
                                  : Colors.white),
                        ),
                        Tab(
                          icon: Image.asset("assets/images/ic_chat.png",
                              width: 18,
                              height: 18,
                              color: tabController.index == 4
                                  ? Colors.green
                                  : Colors.white),
                        ),
                      ],
                      onTap: (index) {
                        (context as Element).markNeedsBuild();
                        vm.updateTitleBasedOnIndex(index);
                      },
                    );
                  },
                )
              ],
            ),
          ),
          body: const TabBarView(
              physics: NeverScrollableScrollPhysics(),
              children: [
                SixPacGlobalFeedScreen(),
                SixPacYourFeedScreen(),
                SixPacSquadsScreen(),
                SixPacProfileScreen(),
                SixPacChatScreen()
              ]),
        )));
  }
}
