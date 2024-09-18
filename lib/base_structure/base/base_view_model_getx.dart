import 'package:get/get.dart';

abstract class BaseViewModel extends GetxController {
  final loading = false.obs;
  bool isDrawerOpen = true;

  @override
  void onInit() {
    super.onInit();
    init();
  }

  void init(){

  }
  void routeBack() {
    Get.back();
  }

  void closeDrawer(){
    isDrawerOpen = false;
  }
}
