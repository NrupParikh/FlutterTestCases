import 'package:flutter/foundation.dart';
import 'package:flutter_application_1/base_structure/base/base_view_model_getx.dart';
import 'package:flutter_application_1/base_structure/model/document.dart';

class DocumentsViewModel extends BaseViewModel {
  @override
  void onInit() {
    super.onInit();
    if (kDebugMode) {
      print("Documents VM Initialized");
    }
  }

  final documents = [
    Document(
      materialId: "SM1",
      materialName: "1200149",
      docType: "AST",
      action: "Demote",
      language: "ENG",
      template: "EUTDS",
      project: "NRD200532/1",
      docDate: "Apr-11-2024",
      expDate: "Apr-06-2025",
      fileName: "TestPhase1.doc",
      fileExpDate: "Apr-06-2025",
      vendorsMaterialCode: "N/A",
      basePrice: "N/A",
      version: "N/A",
    ),
    Document(
      materialId: "SM2",
      materialName: "1200150",
      docType: "AST",
      action: "Promote",
      language: "IT",
      template: "EUTDS",
      project: "NRD200533/1",
      docDate: "Apr-12-2024",
      expDate: "Apr-07-2025",
      fileName: "TestPhase2.doc",
      fileExpDate: "Apr-07-2025",
      vendorsMaterialCode: "N/A",
      basePrice: "N/A",
      version: "N/A",
    ),
  ];
}
