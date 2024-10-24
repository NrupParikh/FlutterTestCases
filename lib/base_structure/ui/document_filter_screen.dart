import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/base_structure/base/base_screen.dart';
import 'package:flutter_application_1/base_structure/constants/app_text_constant.dart';
import 'package:flutter_application_1/base_structure/vm/document_filter_view_model.dart';
import 'package:get/get.dart';

import '../constants/app_strings.dart';
import '../utils/utils.dart';

class DocumentFilterScreen extends BaseScreen<DocumentFilterViewModel> {
  const DocumentFilterScreen({super.key});

  @override
  Widget buildScreen(BuildContext context) {
    return Obx(() => SingleChildScrollView(
          child: Form(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: Text(AppStrings.lblDocType.tr,
                        style: const TextStyle(
                            fontSize: 14,
                            fontFamily: AppTextConstant.poppinsBold)),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: DropdownButtonFormField<String>(
                      dropdownColor: Colors.black,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(4.0),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 2.00),
                        ),
                      ),
                      value: vm.selectedDocTypeItem.value,
                      isExpanded: true,
                      items: vm.docTypeList
                          .map<DropdownMenuItem<String>>((String item) {
                        return DropdownMenuItem(
                          value: item,
                          child: Text(item,
                              style: TextStyle(
                                  color: vm.selectedDocTypeItem.value == item
                                      ? Colors.green
                                      : Colors.white,
                                  fontSize: 14,
                                  fontFamily: AppTextConstant.poppinsRegular)),
                        );
                      }).toList(),
                      onChanged: (String? value) {
                        vm.selectedDocTypeItem.value = value!;
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        disabledBorder: const OutlineInputBorder(),
                        hintText: AppStrings.hintEnterCommonMaterialCode.tr,
                        hintStyle: const TextStyle(
                            fontFamily: AppTextConstant.poppinsRegular),
                        label: Text(AppStrings.lblCommonMaterialCode.tr,
                            style: const TextStyle(
                                fontSize: 12,
                                fontFamily: AppTextConstant.poppinsRegular)),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: Text(AppStrings.lblLanguage.tr,
                        style: const TextStyle(
                            fontSize: 14,
                            fontFamily: AppTextConstant.poppinsBold)),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: DropdownButtonFormField<String>(
                      dropdownColor: Colors.black,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(4.0),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 2.00),
                        ),
                      ),
                      value: vm.selecteLanguageItem.value,
                      isExpanded: true,
                      items: vm.languageList
                          .map<DropdownMenuItem<String>>((String item) {
                        return DropdownMenuItem(
                          value: item,
                          child: Text(item,
                              style: TextStyle(
                                  color: vm.selecteLanguageItem.value == item
                                      ? Colors.green
                                      : Colors.white,
                                  fontSize: 14,
                                  fontFamily: AppTextConstant.poppinsRegular)),
                        );
                      }).toList(),
                      onChanged: (String? value) {
                        vm.selecteLanguageItem.value = value!;
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: Text(AppStrings.lblDocumentTemplate.tr,
                        style: const TextStyle(
                            fontSize: 14,
                            fontFamily: AppTextConstant.poppinsBold)),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: DropdownButtonFormField<String>(
                      dropdownColor: Colors.black,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(4.0),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 2.00),
                        ),
                      ),
                      value: vm.selectedocTemplateItem.value,
                      isExpanded: true,
                      items: vm.docTemplateList
                          .map<DropdownMenuItem<String>>((String item) {
                        return DropdownMenuItem(
                          value: item,
                          child: Text(item,
                              style: TextStyle(
                                  color: vm.selectedocTemplateItem.value == item
                                      ? Colors.green
                                      : Colors.white,
                                  fontSize: 14,
                                  fontFamily: AppTextConstant.poppinsRegular)),
                        );
                      }).toList(),
                      onChanged: (String? value) {
                        vm.selectedocTemplateItem.value = value!;
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  // ============================================================
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Autocomplete<String>(
                      optionsBuilder: (TextEditingValue textEditingValue) {
                        if (textEditingValue.text == "") {
                          return const Iterable.empty();
                        }
                        return vm.materialList.where((String element) {
                          return element
                              .toLowerCase()
                              .contains(textEditingValue.text.toLowerCase());
                        });
                      },
                      onSelected: (String selection) {
                        if (kDebugMode) {
                          // Hide the keyboard when an option is selected
                          Focus.of(context).unfocus();
                          print("You have selected $selection");
                        }
                      },
                      fieldViewBuilder: (BuildContext context,
                          TextEditingController textEditingController,
                          FocusNode focusNode,
                          VoidCallback onFieldSubmitted) {
                        // Syncing your controller with the one provided by Autocomplete
                        textEditingController.text = vm.materialController.text;
                        return TextFormField(
                          // Use the Autocomplete controller
                          controller: textEditingController,
                          // Use the Autocomplete focus node
                          focusNode: focusNode,
                          decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.search),
                              border: const OutlineInputBorder(),
                              labelText: AppStrings.lblSearchMaterial.tr),
                          onChanged: (value) {
                            // Keep your controller updated
                            vm.materialController.text = value;
                          },
                        );
                      },
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              disabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey)),
                              enabled: false,
                              border: OutlineInputBorder(),
                              label: Text("Material Id",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontFamily:
                                          AppTextConstant.poppinsRegular)),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              disabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey)),
                              enabled: false,
                              border: OutlineInputBorder(),
                              label: Text("Material Name",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontFamily:
                                          AppTextConstant.poppinsRegular)),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 16,
                  ),
                  // ============================================================
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Autocomplete<String>(
                      optionsBuilder: (TextEditingValue textEditingValue) {
                        if (textEditingValue.text == "") {
                          return const Iterable.empty();
                        }
                        return vm.projectList.where((String element) {
                          return element
                              .toLowerCase()
                              .contains(textEditingValue.text.toLowerCase());
                        });
                      },
                      onSelected: (String selection) {
                        if (kDebugMode) {
                          // Hide the keyboard when an option is selected
                          Focus.of(context).unfocus();
                          print("You have selected $selection");
                        }
                      },
                      fieldViewBuilder: (BuildContext context,
                          TextEditingController textEditingController,
                          FocusNode focusNode,
                          VoidCallback onFieldSubmitted) {
                        // Syncing your controller with the one provided by Autocomplete
                        textEditingController.text = vm.projectController.text;
                        return TextFormField(
                          // Use the Autocomplete controller
                          controller: textEditingController,
                          // Use the Autocomplete focus node
                          focusNode: focusNode,
                          decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.search),
                              border: const OutlineInputBorder(),
                              labelText: AppStrings.lblSearchProject.tr),
                          onChanged: (value) {
                            // Keep your controller updated
                            vm.projectController.text = value;
                          },
                        );
                      },
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              disabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey)),
                              enabled: false,
                              border: OutlineInputBorder(),
                              label: Text("Project Id",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontFamily:
                                          AppTextConstant.poppinsRegular)),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              disabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey)),
                              enabled: false,
                              border: OutlineInputBorder(),
                              label: Text("Project Name",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontFamily:
                                          AppTextConstant.poppinsRegular)),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  // ============================================================
                  const SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Autocomplete<String>(
                      optionsBuilder: (TextEditingValue textEditingValue) {
                        if (textEditingValue.text == "") {
                          return const Iterable.empty();
                        }
                        return vm.businessPartnerList.where((String element) {
                          return element
                              .toLowerCase()
                              .contains(textEditingValue.text.toLowerCase());
                        });
                      },
                      onSelected: (String selection) {
                        if (kDebugMode) {
                          // Hide the keyboard when an option is selected
                          Focus.of(context).unfocus();
                          print("You have selected $selection");
                        }
                      },
                      fieldViewBuilder: (BuildContext context,
                          TextEditingController textEditingController,
                          FocusNode focusNode,
                          VoidCallback onFieldSubmitted) {
                        // Syncing your controller with the one provided by Autocomplete
                        textEditingController.text =
                            vm.businessPartnerController.text;
                        return TextFormField(
                          // Use the Autocomplete controller
                          controller: textEditingController,
                          // Use the Autocomplete focus node
                          focusNode: focusNode,
                          decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.search),
                              border: const OutlineInputBorder(),
                              labelText:
                                  AppStrings.lblSearchBusinessPartner.tr),
                          onChanged: (value) {
                            // Keep your controller updated
                            vm.businessPartnerController.text = value;
                          },
                        );
                      },
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              disabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey)),
                              enabled: false,
                              border: OutlineInputBorder(),
                              label: Text("Business Partner Id",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontFamily:
                                          AppTextConstant.poppinsRegular)),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              disabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey)),
                              enabled: false,
                              border: OutlineInputBorder(),
                              label: Text("Business Partner Name",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontFamily:
                                          AppTextConstant.poppinsRegular)),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  // ============================================================
                  const SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: Text(AppStrings.lblCreationDateFrom.tr,
                        style: const TextStyle(
                            fontSize: 14,
                            fontFamily: AppTextConstant.poppinsBold)),
                  ),
                  Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            enabled: false,
                            decoration: InputDecoration(
                              border: const OutlineInputBorder(),
                              disabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey)),
                              label: Text(vm.selectedCreationDateFrom.value,
                                  style: const TextStyle(
                                      fontSize: 12,
                                      fontFamily:
                                          AppTextConstant.poppinsRegular)),
                            ),
                          ),
                        ),
                      ),
                      IconButton(
                          onPressed: () async {
                            DateTime? pickedDate = await openDateTimePicker(
                                context,
                                AppStrings.lblCreationDateFrom.tr,
                                DateTime.now(),
                                DateTime.now(),
                                DateTime(2101));

                            if (kDebugMode) {
                              // 2024-10-11 00:00:00.000
                              print("Date Time $pickedDate");
                            }
                            String formattedDate =
                                getDateInddMMyyyy(pickedDate);
                            vm.selectedCreationDateFrom.value =
                                formattedDate.toString();
                          },
                          icon: const Icon(Icons.date_range))
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: Text(AppStrings.lblCreationDateTo.tr,
                        style: const TextStyle(
                            fontSize: 14,
                            fontFamily: AppTextConstant.poppinsBold)),
                  ),
                  Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            enabled: false,
                            decoration: InputDecoration(
                              border: const OutlineInputBorder(),
                              disabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey)),
                              label: Text(vm.selectedCreationDateTo.value,
                                  style: const TextStyle(
                                      fontSize: 12,
                                      fontFamily:
                                          AppTextConstant.poppinsRegular)),
                            ),
                          ),
                        ),
                      ),
                      IconButton(
                          onPressed: () async {
                            DateTime? pickedDate = await openDateTimePicker(
                                context,
                                AppStrings.lblCreationDateTo.tr,
                                DateTime.now(),
                                DateTime.now(),
                                DateTime(2101));

                            if (kDebugMode) {
                              // 2024-10-11 00:00:00.000
                              print("Date Time $pickedDate");
                            }
                            String formattedDate =
                                getDateInddMMyyyy(pickedDate);
                            vm.selectedCreationDateTo.value =
                                formattedDate.toString();
                          },
                          icon: const Icon(Icons.date_range))
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: Text(AppStrings.lblExpirationDateFrom.tr,
                        style: const TextStyle(
                            fontSize: 14,
                            fontFamily: AppTextConstant.poppinsBold)),
                  ),
                  Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            enabled: false,
                            decoration: InputDecoration(
                              border: const OutlineInputBorder(),
                              disabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey)),
                              label: Text(vm.selectedExpirationDateFrom.value,
                                  style: const TextStyle(
                                      fontSize: 12,
                                      fontFamily:
                                          AppTextConstant.poppinsRegular)),
                            ),
                          ),
                        ),
                      ),
                      IconButton(
                          onPressed: () async {
                            DateTime? pickedDate = await openDateTimePicker(
                                context,
                                AppStrings.lblExpirationDateFrom.tr,
                                DateTime.now(),
                                DateTime.now(),
                                DateTime(2101));

                            if (kDebugMode) {
                              // 2024-10-11 00:00:00.000
                              print("Date Time $pickedDate");
                            }
                            String formattedDate =
                                getDateInddMMyyyy(pickedDate);
                            vm.selectedExpirationDateFrom.value =
                                formattedDate.toString();
                          },
                          icon: const Icon(Icons.date_range))
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: Text(AppStrings.lblExpirationDateTo.tr,
                        style: const TextStyle(
                            fontSize: 14,
                            fontFamily: AppTextConstant.poppinsBold)),
                  ),
                  Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            enabled: false,
                            decoration: InputDecoration(
                              border: const OutlineInputBorder(),
                              disabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey)),
                              label: Text(vm.selectedExpirationDateTo.value,
                                  style: const TextStyle(
                                      fontSize: 12,
                                      fontFamily:
                                          AppTextConstant.poppinsRegular)),
                            ),
                          ),
                        ),
                      ),
                      IconButton(
                          onPressed: () async {
                            DateTime? pickedDate = await openDateTimePicker(
                                context,
                                AppStrings.lblExpirationDateTo.tr,
                                DateTime.now(),
                                DateTime.now(),
                                DateTime(2101));

                            if (kDebugMode) {
                              // 2024-10-11 00:00:00.000
                              print("Date Time $pickedDate");
                            }
                            String formattedDate =
                                getDateInddMMyyyy(pickedDate);
                            vm.selectedExpirationDateTo.value =
                                formattedDate.toString();
                          },
                          icon: const Icon(Icons.date_range))
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: OutlinedButton(
                            child: Text(AppStrings.lblClear.tr),
                            onPressed: () {}),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: OutlinedButton(
                            child: Text(AppStrings.lblSearch.tr),
                            onPressed: () {
                              if (kDebugMode) {}
                            }),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
