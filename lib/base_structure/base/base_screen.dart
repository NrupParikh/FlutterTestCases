import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/base_structure/constants/app_strings.dart';
import 'package:flutter_application_1/base_structure/routes/app_route.dart';
import 'package:flutter_application_1/base_structure/ui/documents_screen.dart';
import 'package:flutter_application_1/base_structure/ui/home_screen.dart';
import 'package:flutter_application_1/base_structure/utils/utils.dart';
import 'package:get/get.dart';
import '../constants/app_text_constant.dart';

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
  }

  Widget _buildScaffold(BuildContext context) {
    final String currentRouteName = getCurrentRouteName();

    if (kDebugMode) {
      print("currentRouteNameA = $currentRouteName");
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
        drawer: (currentRouteName == HomeScreen().runtimeType.toString() ||
                currentRouteName ==
                    Routes.home.substring(Routes.home.lastIndexOf('/') + 1))
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
      leading: (currentRouteName == HomeScreen().runtimeType.toString() ||
              currentRouteName ==
                  Routes.home.substring(Routes.home.lastIndexOf('/') + 1))
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
          const DrawerHeader(
              child: Center(
                  child: Text(AppStrings.appName,
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: AppTextConstant.poppinsBold)))),
          GestureDetector(
            onTap: () {
              if (kDebugMode) {
                print("documentManagement");
                Get.to(DocumentsScreen());
              }
              closeDrawer(_scaffoldKey);
            },
            child: const ListTile(
              title: Text(AppStrings.documentManagement,
                  style: TextStyle(
                      fontSize: 14, fontFamily: AppTextConstant.poppinsMedium)),
            ),
          ),
          GestureDetector(
            onTap: () {
              if (kDebugMode) {
                print("profile");
              }
              closeDrawer(_scaffoldKey);
            },
            child: const ListTile(
              title: Text(AppStrings.profile,
                  style: TextStyle(
                      fontSize: 14, fontFamily: AppTextConstant.poppinsMedium)),
            ),
          ),
          GestureDetector(
            onTap: () {
              if (kDebugMode) {
                print("notifications");
              }
              closeDrawer(_scaffoldKey);
            },
            child: const ListTile(
              title: Text(AppStrings.notifications,
                  style: TextStyle(
                      fontSize: 14, fontFamily: AppTextConstant.poppinsMedium)),
            ),
          ),
          GestureDetector(
            onTap: () {
              if (kDebugMode) {
                print("changePassword");
              }
              closeDrawer(_scaffoldKey);
            },
            child: const ListTile(
              title: Text(AppStrings.changePassword,
                  style: TextStyle(
                      fontSize: 14, fontFamily: AppTextConstant.poppinsMedium)),
            ),
          ),
          GestureDetector(
            onTap: () {
              if (kDebugMode) {
                print("changeLanguage");
              }
              closeDrawer(_scaffoldKey);
            },
            child: const ListTile(
              title: Text(AppStrings.changeLanguage,
                  style: TextStyle(
                      fontSize: 14, fontFamily: AppTextConstant.poppinsMedium)),
            ),
          ),
          GestureDetector(
            onTap: () {
              if (kDebugMode) {
                print("logout");
              }
              closeDrawer(_scaffoldKey);
            },
            child: const ListTile(
              title: Text(AppStrings.logout,
                  style: TextStyle(
                      fontSize: 14, fontFamily: AppTextConstant.poppinsMedium)),
            ),
          ),
        ],
      ),
    );
  }
}
