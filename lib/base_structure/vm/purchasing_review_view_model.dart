import 'package:flutter/foundation.dart';
import 'package:flutter_application_1/base_structure/base/base_view_model_getx.dart';
import 'package:get/get.dart';

class PurchasingReviewViewModel extends BaseViewModel {
  RxString selectedToDate = "".obs;
  @override
  void onInit() {
    super.onInit();
    if (kDebugMode) {
      print("Purchasing Review VM Initialized");
    }
  }
}
