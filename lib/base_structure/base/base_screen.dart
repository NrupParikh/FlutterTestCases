import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/base_structure/constants/app_colors.dart';
import 'package:flutter_application_1/base_structure/constants/app_strings.dart';
import 'package:flutter_application_1/base_structure/ui/change_password_screen.dart';
import 'package:flutter_application_1/base_structure/ui/documents_screen.dart';
import 'package:flutter_application_1/base_structure/ui/home_screen.dart';
import 'package:flutter_application_1/base_structure/ui/notifications_screen.dart';
import 'package:flutter_application_1/base_structure/ui/profile_screen.dart';
import 'package:flutter_application_1/base_structure/utils/utils.dart';
import 'package:get/get.dart';
import '../constants/app_text_constant.dart';
import '../ui/change_language_screen.dart';

abstract class BaseScreen<T extends GetxController> extends GetView<T> {
  final GlobalKey<ScaffoldState> _scaffoldKey;
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
    if (kDebugMode) {
      print("initViewModel");
    }
  }

  Widget _buildScaffold(BuildContext context) {
    final String currentRouteName = getCurrentRouteName();

    if (kDebugMode) {
      print("currentRouteNameA _buildScaffold = $currentRouteName");
    }

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
                child: buildDrawer(currentRouteName))
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
      print("currentRouteNameB buildAppBar = $currentRouteName");
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

  Drawer buildDrawer(String currentRouteName) {
    if (kDebugMode) {
      print("buildDrawer");
    }
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
        ListTile(
              title: Text(AppStrings.projectManagement.tr,
                  style: const TextStyle(
                      fontSize: 14, fontFamily: AppTextConstant.poppinsMedium)),
              selectedTileColor: ColorConstant.selectedTileColor,
              selected: returnIndexBasedOnScreen(currentRouteName) == 0,
              onTap: () => setSelected(0),
            ),
        
          ListTile(
                title: Text(AppStrings.documentManagement.tr,
                    style: const TextStyle(
                        fontSize: 14,
                        fontFamily: AppTextConstant.poppinsMedium)),
                selectedTileColor: ColorConstant.selectedTileColor,
                selected: returnIndexBasedOnScreen(currentRouteName) == 1,
                onTap: () => setSelected(1),
              ),
           ListTile(
                title: Text(AppStrings.profile.tr,
                    style: const TextStyle(
                        fontSize: 14,
                        fontFamily: AppTextConstant.poppinsMedium)),
                selectedTileColor: ColorConstant.selectedTileColor,
                selected: returnIndexBasedOnScreen(currentRouteName) == 2,
                onTap: () => setSelected(2),
              ),
         ListTile(
                title: Text(AppStrings.notifications.tr,
                    style: const TextStyle(
                        fontSize: 14,
                        fontFamily: AppTextConstant.poppinsMedium)),
                selectedTileColor: ColorConstant.selectedTileColor,
                selected: returnIndexBasedOnScreen(currentRouteName) == 3,
                onTap: () => setSelected(3),
              ),
         ListTile(
                title: Text(AppStrings.changePassword.tr,
                    style: const TextStyle(
                        fontSize: 14,
                        fontFamily: AppTextConstant.poppinsMedium)),
                selectedTileColor: ColorConstant.selectedTileColor,
                selected: returnIndexBasedOnScreen(currentRouteName) == 4,
                onTap: () => setSelected(4),
              ),
           ListTile(
                title: Text(AppStrings.changeLanguage.tr,
                    style: const TextStyle(
                        fontSize: 14,
                        fontFamily: AppTextConstant.poppinsMedium)),
                selectedTileColor: ColorConstant.selectedTileColor,
                selected: returnIndexBasedOnScreen(currentRouteName) == 5,
                onTap: () => setSelected(5),
              ),
          ListTile(
                title: Text(AppStrings.logout.tr,
                    style: const TextStyle(
                        fontSize: 14,
                        fontFamily: AppTextConstant.poppinsMedium)),
                selectedTileColor: ColorConstant.selectedTileColor,
              
                onTap: () => {doLogout(_scaffoldKey)},
              ),
        ],
      ),
    );
  }

  int returnIndexBasedOnScreen(String currentRoute) {
    if (currentRoute == "home" || currentRoute == "HomeScreen") {
      return 0;
    } else if (currentRoute == "documents" ||
        currentRoute == "DocumentsScreen") {
      return 1;
    } else if (currentRoute == "profile" ||
        currentRoute == "ProfileScreen") {
      return 2;
    } else if (currentRoute == "notifications" ||
        currentRoute == "NotificationsScreen") {
      return 3;
    } else if (currentRoute == "changePassword" ||
        currentRoute == "ChangePasswordScreen") {
      return 4;
    } else if (currentRoute == "changeLanguage" ||
        currentRoute == "ChangeLanguageScreen") {
      return 5;
    }
    return 0;
  }

  void setSelected(int index) async {
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
