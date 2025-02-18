import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

import '../../main.dart';
import '../ui/six_pac_tab1_screen.dart';
import '../ui/six_pac_tab2_screen.dart';
import '../ui/six_pac_tab3_screen.dart';
import '../ui/six_pac_tab4_screen.dart';

abstract class BaseViewModel extends GetxController {
  final loading = false.obs;
  bool isDrawerOpen = true;
  RxString appBarTitle = "TEST".obs;
  RxInt selectedSocialOption = 0.obs;

  var files = <Uint8List>[].obs; // Store file bytes
  var fileNames = <String>[].obs; // Store file names

  @override
  void onInit() {
    super.onInit();
    init();
  }

  void init() {}

  // Call this as vm.routeBack() in any Screen to go back screen

  void routeBack() {
    Get.back();
  }

  void closeDrawer() {
    isDrawerOpen = false;
  }

  void updateAppBarTitle(String title) {
    appBarTitle.value = title;
  }

  void updateSocialOption(int option) {
    selectedSocialOption.value = option;
  }

  // Method to update selected index
  void changeTabIndexOfBottomAppBar(int index) {
    selectedBottomNavigationBarItemIndex.value = index;
    if (kDebugMode) {
      print("TAG_BAI $index");
    }
    switch (index) {
      case 1:
        Get.to(const SixPacTab1Screen());
      case 2:
        // (SEARCH) 5 TABS : Global Feed / Your Feed / Squads [Discover/Member/Leader] / Profile / Messages
        Get.to(const SixPacTab2Screen());
      case 3:
        // CHALLENGES : MY CHALLENGES / DISCOVER
        Get.to(const SixPacTab3Screen());
      case 4:
        // @PROFILE
        Get.to(const SixPacTab4Screen());
    }
  }

// Select Image or Video from system. Max 5
  Future<void> pickMultipleImageOrVideos() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowMultiple: true,
        allowedExtensions: ['jpg', 'png', 'mp4', 'mov', 'avi']);

    if (result != null) {
      if (result.files.length > 5) {
        Get.snackbar("Limit Exceeded", "You can only select up to 5 files",
            snackPosition: SnackPosition.BOTTOM);
      } else {
        files.clear();
        fileNames.clear();

        files.addAll(result.files.map((file) => file.bytes!).toList());
        fileNames.addAll(result.files.map((file) => file.name).toList());
      }
    }
  }
}
