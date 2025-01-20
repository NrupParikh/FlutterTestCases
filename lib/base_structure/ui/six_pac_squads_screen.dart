import 'package:flutter/material.dart';
import 'package:flutter_application_1/base_structure/base/base_screen.dart';
import 'package:flutter_application_1/base_structure/ui/six_pac_discover_screen.dart';
import 'package:flutter_application_1/base_structure/ui/six_pac_leader_screen.dart';
import 'package:flutter_application_1/base_structure/ui/six_pac_member_screen.dart';
import 'package:flutter_application_1/base_structure/vm/six_pac_squads_view_model.dart';

class SixPacSquadsScreen extends BaseScreen<SixPacSquadsViewModel> {
  const SixPacSquadsScreen({super.key});

 @override
  Widget buildScreen(BuildContext context) {
    return  DefaultTabController(
        initialIndex: 0,
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
                    return TabBar(
                      tabAlignment: TabAlignment.fill,
                      isScrollable: false,
                      tabs: const [
                        Tab(child: Text("DISCOVER")),
                        Tab(child: Text("MEMBER")),
                        Tab(child: Text("LEADER")),
                      ],
                      onTap: (index) {
                        (context as Element).markNeedsBuild();
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
                SixPacDiscoverScreen(),
                SixPacMemberScreen(),
                SixPacLeaderScreen(),
              ]),
        ));
  }
}
