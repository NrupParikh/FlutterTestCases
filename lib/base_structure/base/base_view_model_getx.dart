import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

import '../../main.dart';
import '../ui/six_pac_tab1_screen.dart';
import '../ui/six_pac_tab2_screen.dart';
import '../ui/six_pac_tab3_screen.dart';
import '../ui/six_pac_tab4_screen.dart';

abstract class BaseViewModel extends GetxController {
  final loading = false.obs;
  bool isDrawerOpen = true;

  @override
  void onInit() {
    super.onInit();
    init();
  }

  void init() {}

  // Call this as vm.routeBack() in any Screen to go back screen

  void routeBack() {
    Get.back();
  }

  void closeDrawer() {
    isDrawerOpen = false;
  }

  // Method to update selected index
  void changeTabIndexOfBottomAppBar(int index) {
    selectedBottomNavigationBarItemIndex.value = index;
    if (kDebugMode) {
      print("TAG_BAI $index");
    }
    switch (index) {
      case 1:
        Get.to(const SixPacTab1Screen());
      case 2:
      // (SEARCH) 5 TABS : Global Feed / Your Feed / Squads [Discover/Member/Leader] / Profile / Messages
        Get.to(const SixPacTab2Screen());
      case 3:
      // CHALLENGES : MY CHALLENGES / DISCOVER
        Get.to(const SixPacTab3Screen());
      case 4:
      // @PROFILE
        Get.to(const SixPacTab4Screen());
    }
  }
}
