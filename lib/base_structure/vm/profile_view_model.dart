import 'package:flutter/foundation.dart';
import 'package:flutter_application_1/base_structure/base/base_view_model_getx.dart';
import 'package:get/get.dart';

class ProfileViewModel extends BaseViewModel {
  late List<String> languageList;
  late RxString selectedLanguageListItem;

  late List<String> siteList;
  late RxString selectedSiteListItem;

  late List<String> dateFormatList;
  late RxString selectedDateFormatListItem;

  late List<String> timeFormatList;
  late RxString selectedTimeFormatListItem;

  RxBool isEdit = false.obs;

  Future<void> doEdit() async {
    isEdit.value = !isEdit.value;
  }

  @override
  void onInit() {
    super.onInit();
    if (kDebugMode) {
      print("Profile VM Initialized");
    }
    languageList = <String>[
      "English",
      "Italian",
      "Spanish",
    ];

    selectedLanguageListItem = languageList.first.obs;

    siteList = <String>[
      "Parma,Italy",
      "Sydeny,AU",
      "Singapore",
    ];

    selectedSiteListItem = siteList.first.obs;

    dateFormatList = <String>[
      "MM-DD-YYYY",
      "DD-MM-YYYY",
      "YYYY-MM-DD",
    ];

    selectedDateFormatListItem = dateFormatList.first.obs;

    timeFormatList = <String>[
      "12 hours",
      "24 hours",
    ];

    selectedTimeFormatListItem = timeFormatList.first.obs;
  }
}
