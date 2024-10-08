import 'package:flutter/foundation.dart';
import 'package:flutter_application_1/base_structure/base/base_view_model_getx.dart';
import 'package:get/get.dart';

class QCInspectionViewModel extends BaseViewModel {

  late List<String> qcInspectionList;
  late RxString selectedQcInspectionItem;

  late List<String> samplingPlanlist;
  late RxString selectedSamplingPlanItem;

  @override
  void onInit() {
    super.onInit();
    if (kDebugMode) {
      print("QC Inspection VM Initialized");
    }

    qcInspectionList = <String>["One", "Two", "Three", "Four", "Five"];
    selectedQcInspectionItem = qcInspectionList.first.obs;

    samplingPlanlist = <String>["Normal", "Intermediate", "Expert"];
    selectedSamplingPlanItem = samplingPlanlist.first.obs;
  }
}
