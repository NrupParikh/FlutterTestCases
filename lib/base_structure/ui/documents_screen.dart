import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/base_structure/base/base_screen.dart';
import 'package:flutter_application_1/base_structure/constants/app_strings.dart';
import 'package:flutter_application_1/base_structure/constants/app_text_constant.dart';
import 'package:flutter_application_1/base_structure/vm/documents_view_model.dart';
import 'package:get/get.dart';

import '../common_widgets/custom_dialog.dart';
import '../common_widgets/no_data.dart';

class DocumentsScreen extends BaseScreen<DocumentsViewModel> {
  const DocumentsScreen({super.key});

  @override
  Widget buildScreen(BuildContext context) {
    return 
    Obx(() =>
    
    (vm.documents.isNotEmpty)
        ? ListView.separated(
            padding: const EdgeInsets.symmetric(vertical: 8),
            scrollDirection: Axis.vertical,
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(width: 8);
            },
            itemCount: vm.documents.length,
            itemBuilder: (context, index) {
              final document = vm.documents[index];
              return Stack(
                children: [
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                  child: Text(
                                AppStrings.lblMaterialName.tr,
                                style: const TextStyle(
                                    fontSize: 14,
                                    fontFamily: AppTextConstant.poppinsMedium),
                              )),
                              Expanded(
                                  child: Text(
                                document.materialName.toString(),
                                style: const TextStyle(
                                    fontSize: 12,
                                    fontFamily: AppTextConstant.poppinsMedium),
                              )),
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: Text(
                                AppStrings.lblMaterialId.tr,
                                style: const TextStyle(
                                    fontSize: 14,
                                    fontFamily: AppTextConstant.poppinsMedium),
                              )),
                              Expanded(
                                  child: Text(
                                document.materialId.toString(),
                                style: const TextStyle(
                                    fontSize: 12,
                                    fontFamily: AppTextConstant.poppinsMedium),
                              )),
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: Text(
                                AppStrings.lblDocType.tr,
                                style: const TextStyle(
                                    fontSize: 14,
                                    fontFamily: AppTextConstant.poppinsMedium),
                              )),
                              Expanded(
                                  child: Text(
                                document.docType.toString(),
                                style: const TextStyle(
                                    fontSize: 12,
                                    fontFamily: AppTextConstant.poppinsMedium),
                              )),
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: Text(
                                AppStrings.lblAction.tr,
                                style: const TextStyle(
                                    fontSize: 14,
                                    fontFamily: AppTextConstant.poppinsMedium),
                              )),
                              Expanded(
                                  child: Text(
                                document.action.toString(),
                                style: const TextStyle(
                                    fontSize: 12,
                                    fontFamily: AppTextConstant.poppinsMedium),
                              )),
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: Text(
                                AppStrings.lblLanguage.tr,
                                style: const TextStyle(
                                    fontSize: 14,
                                    fontFamily: AppTextConstant.poppinsMedium),
                              )),
                              Expanded(
                                  child: Text(
                                document.language.toString(),
                                style: const TextStyle(
                                    fontSize: 12,
                                    fontFamily: AppTextConstant.poppinsMedium),
                              )),
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: Text(
                                AppStrings.lblTemplate.tr,
                                style: const TextStyle(
                                    fontSize: 14,
                                    fontFamily: AppTextConstant.poppinsMedium),
                              )),
                              Expanded(
                                  child: Text(
                                document.template.toString(),
                                style: const TextStyle(
                                    fontSize: 12,
                                    fontFamily: AppTextConstant.poppinsMedium),
                              )),
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: Text(
                                AppStrings.lblProject.tr,
                                style: const TextStyle(
                                    fontSize: 14,
                                    fontFamily: AppTextConstant.poppinsMedium),
                              )),
                              Expanded(
                                  child: Text(
                                document.project.toString(),
                                style: const TextStyle(
                                    fontSize: 12,
                                    fontFamily: AppTextConstant.poppinsMedium),
                              )),
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: Text(
                                AppStrings.lblDocDate.tr,
                                style: const TextStyle(
                                    fontSize: 14,
                                    fontFamily: AppTextConstant.poppinsMedium),
                              )),
                              Expanded(
                                  child: Text(
                                document.docDate.toString(),
                                style: const TextStyle(
                                    fontSize: 12,
                                    fontFamily: AppTextConstant.poppinsMedium),
                              )),
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: Text(
                                AppStrings.lblExpDate.tr,
                                style: const TextStyle(
                                    fontSize: 14,
                                    fontFamily: AppTextConstant.poppinsMedium),
                              )),
                              Expanded(
                                  child: Text(
                                document.fileExpDate.toString(),
                                style: const TextStyle(
                                    fontSize: 12,
                                    fontFamily: AppTextConstant.poppinsMedium),
                              )),
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: Text(
                                AppStrings.lblFileName.tr,
                                style: const TextStyle(
                                    fontSize: 14,
                                    fontFamily: AppTextConstant.poppinsMedium),
                              )),
                              Expanded(
                                  child: Text(
                                document.fileName.toString(),
                                style: const TextStyle(
                                    color: Colors.green,
                                    decoration: TextDecoration.underline,
                                    decorationColor: Colors.green,
                                    fontSize: 12,
                                    fontFamily: AppTextConstant.poppinsBold),
                              )),
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: Text(
                                AppStrings.lblFileExpDate.tr,
                                style: const TextStyle(
                                    fontSize: 14,
                                    fontFamily: AppTextConstant.poppinsMedium),
                              )),
                              Expanded(
                                  child: Text(
                                document.expDate.toString(),
                                style: const TextStyle(
                                    fontSize: 12,
                                    fontFamily: AppTextConstant.poppinsMedium),
                              )),
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: Text(
                                AppStrings.lblVendorsMaterialCode.tr,
                                style: const TextStyle(
                                    fontSize: 14,
                                    fontFamily: AppTextConstant.poppinsMedium),
                              )),
                              Expanded(
                                  child: Text(
                                document.vendorsMaterialCode.toString(),
                                style: const TextStyle(
                                    fontSize: 12,
                                    fontFamily: AppTextConstant.poppinsMedium),
                              )),
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: Text(
                                AppStrings.lblBasePrice.tr,
                                style: const TextStyle(
                                    fontSize: 14,
                                    fontFamily: AppTextConstant.poppinsMedium),
                              )),
                              Expanded(
                                  child: Text(
                                document.basePrice.toString(),
                                style: const TextStyle(
                                    fontSize: 12,
                                    fontFamily: AppTextConstant.poppinsMedium),
                              )),
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: Text(
                                AppStrings.lblVersion.tr,
                                style: const TextStyle(
                                    fontSize: 14,
                                    fontFamily: AppTextConstant.poppinsMedium),
                              )),
                              Expanded(
                                  child: Text(
                                document.version.toString(),
                                style: const TextStyle(
                                    fontSize: 12,
                                    fontFamily: AppTextConstant.poppinsMedium),
                              )),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 8,
                    right: 8,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButton(
                          color: Colors.black,
                          onPressed: () {
                            if (kDebugMode) {
                              print("Share");
                            }
                          },
                          icon: const Icon(Icons.share,color: Colors.green,)),
                    ),
                  ),
                  Positioned(
                    bottom: 8,
                    right: 8,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButton(
                          color: Colors.black,
                          onPressed: () async {
                            final result =
                                await CustomDialog.showOkCancelDialog(
                                    AppStrings.appName.tr,
                                    AppStrings.msgDeleteDocConfirmation.tr);
                            if (result) {
                              vm.deleteDocument(index);
                            }
                          },
                          icon: const Icon(Icons.delete,color: Colors.green,)),
                    ),
                  )
                ],
              );
            })
        : NoData(title: AppStrings.noDocumentFound.tr));
  }
}
