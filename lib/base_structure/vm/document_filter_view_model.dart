import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/base_structure/base/base_view_model_getx.dart';
import 'package:get/get.dart';

class DocumentFilterViewModel extends BaseViewModel {
  late List<String> docTypeList;
  late RxString selectedDocTypeItem;

  late List<String> docTemplateList;
  late RxString selectedocTemplateItem;

  late List<String> languageList;
  late RxString selecteLanguageItem;

  RxString selectedCreationDateFrom = "".obs;
  RxString selectedCreationDateTo = "".obs;
  RxString selectedExpirationDateFrom = "".obs;
  RxString selectedExpirationDateTo = "".obs;

  late List<String> materialList;
  TextEditingController materialController = TextEditingController();

  late List<String> projectList;
  TextEditingController projectController = TextEditingController();

  late List<String> businessPartnerList;
  TextEditingController businessPartnerController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
    if (kDebugMode) {
      print("Document Filter VM Initialized");
    }

    docTypeList = <String>[
      "Allergen Statements for customers who dont really care about bad weather"
    ];

    selectedDocTypeItem = docTypeList.first.obs;

    docTemplateList = <String>[
      "ST - Scheda Tecnica",
      "ST - Scheda Tecnica DSMF",
      "Mexican TDS",
      "US Techcnial Data Sheet"
    ];

    selectedocTemplateItem = docTemplateList.first.obs;

    languageList = <String>[
      "Bulgarian",
      "Chinese",
      "English",
      "French",
      "German",
      "Italian",
      "Norwegian",
      "Polish",
      "Spanish",
      "Swedish"
    ];

    selecteLanguageItem = languageList.first.obs;

    materialList = <String>[
      "2200144(Recipe test)",
      "2200145(test sample)",
      "2200148(RCP 20524)",
    ];

    businessPartnerList = <String>[
      "C00091_00001130(B.H.M. S.r.l.)",
      "C00092_00001130(MP-MAUSTEPALVELU)",
      "C00097_00001130(EGIDIO GALBANI SRL)",
    ];

    projectList = <String>[
      "PAD2000555(PAD)",
      "PFC2000648(PFC 21152024)",
      "PFC2000560(PFC 6May)"
    ];
  }
}
