import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/base_structure/base/base_view_model_getx.dart';

import '../utils/preferences.dart';

class ChangeLanguageViewModel extends BaseViewModel {
  var selectedValue = "en".obs;

  Future<void> updateLanguage(String selectedLanguage) async {
    // Update Local
    if (selectedValue.value == "en") {
      Get.updateLocale(const Locale("en", "US"));
    } else if (selectedValue.value == "it") {
      Get.updateLocale(const Locale("it", "IT"));
    } else if (selectedValue.value == "es") {
      Get.updateLocale(const Locale("es", "ES"));
    }

    // Update value in secure storage
    setStoredLanguage(selectedLanguage.toString());
  }

  @override
  void onInit() async {
    super.onInit();
    if (kDebugMode) {
      print("Change Language VM Initialized");
    }

    // Asign the secure storage language as default selection to selectedValue
    selectedValue.value = await getStoredLanguage();
  }
}
