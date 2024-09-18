import 'package:flutter/foundation.dart';
import 'package:flutter_application_1/base_structure/base/base_view_model_getx.dart';

class ProfileViewModel extends BaseViewModel {
  @override
  void onInit() {
    super.onInit();
    if (kDebugMode) {
      print("Profile VM Initialized");
    }
  }
}
