import 'package:flutter/foundation.dart';
import 'package:flutter_application_1/base_structure/base/base_view_model_getx.dart';
import 'package:get/get.dart';

class IndustrialTrialViewModel extends BaseViewModel {
  RxString selectedToDate = "".obs;
  late RxString selectedPorductionLineGroupItem;
  late List<String> productionLineGroupList;
  @override
  void onInit() {
    super.onInit();
    if (kDebugMode) {
      print("Industrial Trial VM Initialized");
    }

    productionLineGroupList = <String>["Production Line Group 1", "Production Line Group 2", "Production Line Group 3"];
    selectedPorductionLineGroupItem = productionLineGroupList.first.obs;
  }
}
