import 'package:flutter/foundation.dart';
import '../base/base_view_model_getx.dart';

class ChangePasswordViewModel extends BaseViewModel {
  @override
  void onInit() {
    super.onInit();
    if (kDebugMode) {
      print("Notifications VM Initialized");
    }
  }
}
