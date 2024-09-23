import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/base_structure/constants/app_colors.dart';
import 'package:flutter_application_1/base_structure/constants/app_strings.dart';
import 'package:flutter_application_1/base_structure/ui/change_language.dart';
import 'package:flutter_application_1/base_structure/ui/change_password_screen.dart';
import 'package:flutter_application_1/base_structure/ui/documents_screen.dart';
import 'package:flutter_application_1/base_structure/ui/home_screen.dart';
import 'package:flutter_application_1/base_structure/ui/notifications_screen.dart';
import 'package:flutter_application_1/base_structure/ui/profile_screen.dart';
import 'package:flutter_application_1/base_structure/utils/utils.dart';
import 'package:get/get.dart';
import '../constants/app_text_constant.dart';
import '../utils/preferences.dart';

abstract class BaseScreen<T extends GetxController> extends GetView<T> {
  final GlobalKey<ScaffoldState> _scaffoldKey;
  final selectedIndex = 0.obs;

  BaseScreen({Key? key})
      : _scaffoldKey = GlobalKey<ScaffoldState>(),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    if (!vm.initialized) {
      initViewModel();
    }

    return Container(
        color: unsafeAreaColor,
        child: wrapWithSafeArea
            ? SafeArea(
                top: setTopSafeArea,
                bottom: setBottomSafeArea,
                child: _buildScaffold(context))
            : _buildScaffold(context));
  }

  @protected
  void initViewModel() {
    vm.initialized;
  }

  Widget _buildScaffold(BuildContext context) {
    final String currentRouteName = getCurrentRouteName();

    if (kDebugMode) {
      print("currentRouteNameA = $currentRouteName");
    }

    getSelectedDrawerIndex().then((storedIndex) {
      if (kDebugMode) {
        if (storedIndex == "") {
          selectedIndex.value = 0;
        } else {
          selectedIndex.value = int.parse(storedIndex);
        }
      }
    });

    return Scaffold(
        key: _scaffoldKey,
        extendBody: extendedBodyBehindAppBar,
        resizeToAvoidBottomInset: resizeToAvoidBottomInset,
        backgroundColor: screenBackgroundColor,
        appBar: buildAppBar(context),
        body: buildScreen(context),
        bottomNavigationBar: buildBottomNavigationBar(context),
        floatingActionButtonLocation: floatingActionButtonLocation,
        floatingActionButton: buildFloatingActionButton,
        drawer: (!(currentRouteName == "login" ||
                    currentRouteName == "LoginScreen") &&
                !(currentRouteName == "forgotPassword" ||
                    currentRouteName == "ForgotPasswordScreen"))
            ? SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: buildDrawer())
            : null);
  }

  @protected
  T get vm => controller;

  @protected
  Color? get unsafeAreaColor => Colors.black;

  @protected
  bool get wrapWithSafeArea => true;

  @protected
  bool get setTopSafeArea => true;

  @protected
  bool get setBottomSafeArea => true;

  @protected
  bool get extendedBodyBehindAppBar => false;

  @protected
  bool get resizeToAvoidBottomInset => true;

  @protected
  Color? get screenBackgroundColor => Colors.white;

  @protected
  Widget? get buildFloatingActionButton => null;

  @protected
  FloatingActionButtonLocation? get floatingActionButtonLocation => null;

  @protected
  Widget? buildBottomNavigationBar(BuildContext context) => null;

  @protected
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    final String currentRouteName = getCurrentRouteName();

    if (kDebugMode) {
      print("currentRouteNameB = $currentRouteName");
    }

    return AppBar(
      title: Text(getTitle(currentRouteName),
          style: const TextStyle(
              fontSize: 20, fontFamily: AppTextConstant.poppinsBold)),
      centerTitle: true,
      leading: (!(currentRouteName == "login" ||
                  currentRouteName == "LoginScreen") &&
              !(currentRouteName == "forgotPassword" ||
                  currentRouteName == "ForgotPasswordScreen"))
          ? Builder(builder: (context) {
              return IconButton(
                  onPressed: () {
                    openDrawer(_scaffoldKey);
                  },
                  icon: const Icon(Icons.menu));
            })
          : null,
    );
  }

  @protected
  Widget buildScreen(BuildContext context);

  Drawer buildDrawer() {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
              child: Center(
                  child: Text(AppStrings.appName.tr,
                      style: const TextStyle(
                          fontSize: 18,
                          fontFamily: AppTextConstant.poppinsBold)))),
          Obx(
            () => ListTile(
              title: Text(AppStrings.projectManagement.tr,
                  style: const TextStyle(
                      fontSize: 14, fontFamily: AppTextConstant.poppinsMedium)),
              selectedTileColor: ColorConstant.selectedTileColor,
              selected: selectedIndex.value == 0,
              onTap: () => setSelected(0),
            ),
          ),
          Obx(() => ListTile(
                title: Text(AppStrings.documentManagement.tr,
                    style: const TextStyle(
                        fontSize: 14,
                        fontFamily: AppTextConstant.poppinsMedium)),
                selectedTileColor: ColorConstant.selectedTileColor,
                selected: selectedIndex.value == 1,
                onTap: () => setSelected(1),
              )),
          Obx(() => ListTile(
                title: Text(AppStrings.profile.tr,
                    style: const TextStyle(
                        fontSize: 14,
                        fontFamily: AppTextConstant.poppinsMedium)),
                selectedTileColor: ColorConstant.selectedTileColor,
                selected: selectedIndex.value == 2,
                onTap: () => setSelected(2),
              )),
          Obx(() => ListTile(
                title: Text(AppStrings.notifications.tr,
                    style: const TextStyle(
                        fontSize: 14,
                        fontFamily: AppTextConstant.poppinsMedium)),
                selectedTileColor: ColorConstant.selectedTileColor,
                selected: selectedIndex.value == 3,
                onTap: () => setSelected(3),
              )),
          Obx(() => ListTile(
                title: Text(AppStrings.changePassword.tr,
                    style: const TextStyle(
                        fontSize: 14,
                        fontFamily: AppTextConstant.poppinsMedium)),
                selectedTileColor: ColorConstant.selectedTileColor,
                selected: selectedIndex.value == 4,
                onTap: () => setSelected(4),
              )),
          Obx(() => ListTile(
                title: Text(AppStrings.changeLanguage.tr,
                    style: const TextStyle(
                        fontSize: 14,
                        fontFamily: AppTextConstant.poppinsMedium)),
                selectedTileColor: ColorConstant.selectedTileColor,
                selected: selectedIndex.value == 5,
                onTap: () => setSelected(5),
              )),
          Obx(() => ListTile(
                title: Text(AppStrings.logout.tr,
                    style: const TextStyle(
                        fontSize: 14,
                        fontFamily: AppTextConstant.poppinsMedium)),
                selectedTileColor: ColorConstant.selectedTileColor,
                selected: selectedIndex.value == 6,
                onTap: () => {doLogout(_scaffoldKey)},
              )),
        ],
      ),
    );
  }

  void setSelected(int index) async {
    selectedIndex.value = index;

    // Store selected drawer index in secure storage
    setSelectedDrawerIndex(selectedIndex.value);

    if (kDebugMode) {
      print("setSelected =  ${selectedIndex.value}");
    }

    switch (index) {
      case 0:
        Get.off(HomeScreen());
        break;
      case 1:
        Get.off(DocumentsScreen());
        break;
      case 2:
        Get.off(ProfileScreen());
        break;
      case 3:
        Get.off(NotificationsScreen());
        break;
      case 4:
        Get.off(ChangePasswordScreen());
        break;
      case 5:
        Get.off(ChangeLanguageScreen());
        break;
      case 6:
        break;
    }
  }
}
