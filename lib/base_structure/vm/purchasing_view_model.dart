import 'package:flutter/foundation.dart';
import 'package:flutter_application_1/base_structure/base/base_view_model_getx.dart';
import 'package:get/get.dart';

class PurchasingViewModel extends BaseViewModel {
  late List<String> packTypeList;
  late RxString selectedPackTypeItem;

  late List<String> palletTypeList;
  late RxString selectedPalletTypeItem;

  late List<String> majorCodeList;
  late RxString selectedMajorCodeTypeItem;

  late List<String> minorCodeList;
  late RxString selectedMinorCodeTypeItem;

  @override
  void onInit() {
    super.onInit();
    if (kDebugMode) {
      print("Purchasing VM Initialized");
    }

    packTypeList = <String>[
      "Aluminum Bag",
      "Aluminum Bag 2 ",
      "Aluminum Bag 3"
    ];
    selectedPackTypeItem = packTypeList.first.obs;

    palletTypeList = <String>["Plastic", "Plastic 2", "Plastic 3"];
    selectedPalletTypeItem = palletTypeList.first.obs;

    majorCodeList = <String>["Fibers", "Fibers 2", "Fibers 3"];
    selectedMajorCodeTypeItem = majorCodeList.first.obs;

    minorCodeList = <String>["Bamboo", "Bamboo 2", "Bamboo 3"];
    selectedMinorCodeTypeItem = minorCodeList.first.obs;
  }
}
