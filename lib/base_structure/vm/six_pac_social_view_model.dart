// ignore_for_file: avoid_print

import 'package:flutter_application_1/base_structure/base/base_view_model_getx.dart';
import 'package:get/get.dart';

class SixPacSocialViewModel extends BaseViewModel {
  final RxInt initialTabIndex = 2.obs;

  void updateTitleBasedOnIndex(int index) {
    if (index == 0) {
      updateAppBarTitle("GLOBAL FEED");
    } else if (index == 1) {
      updateAppBarTitle("YOUR FEED");
    } else if (index == 2) {
      updateAppBarTitle("SQUAD");
    } else if (index == 3) {
      updateAppBarTitle("PROFILE");
    } else if (index == 4) {
      updateAppBarTitle("CHAT");
    }
  }
}
