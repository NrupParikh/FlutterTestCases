import 'package:flutter/foundation.dart';
import 'package:flutter_application_1/base_structure/base/base_view_model_getx.dart';
import 'package:flutter_application_1/base_structure/constants/app_strings.dart';
import 'package:get/get.dart';

class ProjectFilterViewModel extends BaseViewModel {
  late List<String> projectTypeList;
  late RxString selectedProjectTypeItem;

  late List<String> projectStatusList;
  late RxString selectedProjectStatusItem;

  late List<String> labList;
  late RxString selectedLabItem;

  late List<String> projectManagerList;
  late RxString selectedProjectManagerItem;

  RxString selectedFromDate = "".obs;
  RxString selectedToDate = "".obs;

  @override
  void onInit() {
    super.onInit();
    if (kDebugMode) {
      print("Project Filter VM Initialized");
    }

    projectTypeList = <String>[
      AppStrings.msa.tr,
      AppStrings.nrd.tr,
      AppStrings.pad.tr,
      AppStrings.rch.tr,
      AppStrings.tgi.tr,
    ];

    selectedProjectTypeItem = projectTypeList.first.obs;

    projectStatusList = <String>[
      AppStrings.all.tr,
      AppStrings.created.tr,
      AppStrings.started.tr,
      AppStrings.closed.tr,
      AppStrings.stopped.tr,
      AppStrings.cancelled.tr,
    ];

    selectedProjectStatusItem = projectStatusList.first.obs;

    labList = <String>[
      "Drammen,NO",
      "Monterrey",
      "Parma",
      "Princton,US",
      "Sydney,AU",
      "Singapore",
    ];

    selectedLabItem = labList.first.obs;

    projectManagerList = <String>[
      "Amit Patel",
      "Deena Mehta",
      "Rinku Kumar",
      "Vipul Shah",
    ];

    selectedProjectManagerItem = projectManagerList.first.obs;
  }
}
