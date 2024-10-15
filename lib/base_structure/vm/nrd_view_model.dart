import 'package:flutter/foundation.dart';
import 'package:flutter_application_1/base_structure/base/base_view_model_getx.dart';
import 'package:flutter_application_1/base_structure/utils/preferences.dart';

class NRDViewModel extends BaseViewModel {
  @override
  void onInit() async{
    super.onInit();
    if (kDebugMode) {
      print("NRD VM Initialized");
    }

      final storedTheme = await getStoredTheme();
     if (kDebugMode) {
       print("storedTheme $storedTheme");
     }

  }
}
