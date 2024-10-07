import 'package:flutter/foundation.dart';
import 'package:flutter_application_1/base_structure/base/base_view_model_getx.dart';
import 'package:get/get.dart';

class QCInspectionViewModel extends BaseViewModel {
  
  final List<String> qcInspectionList = <String>["One", "Two", "Three", "Four", "Five"];
  RxString selectedQcInspectionItem = "One".obs;

  final List<String> samplingPlanlist = <String>[
    "Normal",
    "Intermediate",
    "Expert"
  ];
  RxString selectedSamplingPlanItem = "Normal".obs;

  @override
  void onInit() {
    super.onInit();
    if (kDebugMode) {
      print("QC Inspection VM Initialized");
    }
  }
}
