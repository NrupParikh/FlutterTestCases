import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/base_structure/base/constant.dart';
import 'package:flutter_application_1/base_structure/constants/app_strings.dart';
import 'package:flutter_application_1/base_structure/ui/change_password_screen.dart';
import 'package:flutter_application_1/base_structure/ui/document_filter_screen.dart';
import 'package:flutter_application_1/base_structure/ui/documents_screen.dart';
import 'package:flutter_application_1/base_structure/ui/project_management_screen.dart';
import 'package:flutter_application_1/base_structure/ui/notifications_screen.dart';
import 'package:flutter_application_1/base_structure/ui/profile_screen.dart';
import 'package:flutter_application_1/base_structure/ui/project_filter_screen.dart';
import 'package:flutter_application_1/base_structure/utils/preferences.dart';
import 'package:flutter_application_1/base_structure/utils/utils.dart';
import 'package:flutter_application_1/base_structure/vm/fast_track_evaluation_view_model.dart';
import 'package:flutter_application_1/base_structure/vm/haccp.dart';
import 'package:flutter_application_1/base_structure/vm/industrial_review_view_model.dart';
import 'package:flutter_application_1/base_structure/vm/industrial_trial_view_model.dart';
import 'package:flutter_application_1/base_structure/vm/pad_commertial_review_view_model.dart';
import 'package:flutter_application_1/base_structure/vm/pad_department_view_model.dart';
import 'package:flutter_application_1/base_structure/vm/pad_finance_view_model.dart';
import 'package:flutter_application_1/base_structure/vm/pad_production_view_model.dart';
import 'package:flutter_application_1/base_structure/vm/pad_purchasing_view_model.dart';
import 'package:flutter_application_1/base_structure/vm/pad_warehouse_view_model.dart';
import 'package:flutter_application_1/base_structure/vm/profile_view_model.dart';
import 'package:flutter_application_1/base_structure/vm/purchasing_review_view_model.dart';
import 'package:flutter_application_1/base_structure/vm/purchasing_view_model.dart';
import 'package:flutter_application_1/base_structure/vm/qc_inspection_view_model.dart';
import 'package:flutter_application_1/base_structure/vm/rch_quality_view_model.dart';
import 'package:flutter_application_1/base_structure/vm/rch_regulatory_view_model.dart';
import 'package:flutter_application_1/base_structure/vm/rch_rnd_view_model.dart';
import 'package:flutter_application_1/base_structure/vm/rnd_view_model.dart';
import 'package:flutter_application_1/base_structure/vm/warehousing_view_model.dart';
import 'package:get/get.dart';
import '../constants/app_text_constant.dart';
import '../constants/app_theme.dart';
import '../ui/change_language_screen.dart';

abstract class BaseScreen<T extends GetxController> extends GetView<T> {
  const BaseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    if (!vm.initialized) {
      initViewModel();
    }

    var currentTheme = AppTheme.lightTheme.obs;
    getStoredTheme().then((value) => {
          if (value == AppTheme.lightTheme)
            {currentTheme.value = AppTheme.lightTheme}
          else
            {currentTheme.value = AppTheme.darkTheme}
        });

    return Container(
        color: unsafeAreaColor,
        child: wrapWithSafeArea
            ? SafeArea(
                top: setTopSafeArea,
                bottom: setBottomSafeArea,
                child: _buildScaffold(context, currentTheme))
            : _buildScaffold(context, currentTheme));
  }

  @protected
  void initViewModel() {
    vm.initialized;
    if (kDebugMode) {
      print("initViewModel");
    }
  }

  Widget _buildScaffold(BuildContext context, RxString currentTheme) {
    final String currentRouteName = getCurrentRouteName();

    if (kDebugMode) {
      print("currentRouteNameA _buildScaffold = $currentRouteName");
      print("Current VM = $controller");
    }

    return Scaffold(
        // key: _scaffoldKey,
        drawerEnableOpenDragGesture: false,
        extendBody: extendedBodyBehindAppBar,
        resizeToAvoidBottomInset: resizeToAvoidBottomInset,
        // If you want to don't show the AppBar in internal screen.
        // Ex. Tab then check with VM and set null
        appBar: ((controller is FastTrackEvaluationViewModel) ||
                (controller is RNDViewModel) ||
                (controller is QCInspectionViewModel) ||
                (controller is PurchasingViewModel) ||
                (controller is WarehousingViewModel) ||
                (controller is HACCPViewModel) ||
                (controller is PurchasingReviewViewModel) ||
                (controller is IndustrialTrialViewModel) ||
                (controller is IndustrialReviewViewModel) ||
                (controller is RchRNDViewModel) ||
                (controller is RchQualityViewModel) ||
                (controller is RchRegulatoryViewModel) ||
                (controller is PadDepartmentViewModel) ||
                (controller is PadCommertialReviewViewModel) ||
                (controller is PadFinanceViewModel) ||
                (controller is PadPurchasingViewModel) ||
                (controller is PadProductionViewModel) ||
                (controller is PadWarehouseViewModel))
            ? null
            : buildAppBar(context),
        body: buildScreen(context),
        bottomNavigationBar: buildBottomNavigationBar(context),
        floatingActionButtonLocation: floatingActionButtonLocation,
        floatingActionButton: buildFloatingActionButton,
        drawer: (!(currentRouteName == Constant.tagLoginScreen ||
                    currentRouteName == Constant.tagLogin) &&
                !(currentRouteName == Constant.tagForgotPasswordScreen ||
                    currentRouteName == Constant.tagForgotPassword))
            ? SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: buildDrawer(context, currentRouteName, currentTheme))
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
  PreferredSizeWidget? buildAppBar(
    BuildContext context,
  ) {
    final String currentRouteName = getCurrentRouteName();

    if (kDebugMode) {
      print("currentRouteNameB buildAppBar = $currentRouteName");
    }

    return AppBar(
      title: Text(getTitle(currentRouteName),
          style: const TextStyle(
              fontSize: 18, fontFamily: AppTextConstant.poppinsBold)),
      centerTitle: true,
      leading: (currentRouteName == Constant.tagLoginScreen ||
              currentRouteName == Constant.tagLogin ||
              currentRouteName == Constant.tagForgotPasswordScreen ||
              currentRouteName == Constant.tagForgotPassword)
          ? null
          : ((currentRouteName == Constant.tagProjectFilterScreen ||
                      currentRouteName == Constant.tagProjectFilter) ||
                  (currentRouteName == Constant.tagDocumentFilterScreen ||
                      currentRouteName == Constant.tagDocuments) ||
                  (currentRouteName == Constant.tagNRDScreen ||
                      currentRouteName == Constant.tagNRD) ||
                  (currentRouteName == Constant.tagRCHScreen ||
                      currentRouteName == Constant.tagRCH) ||
                  (currentRouteName == Constant.tagTGIScreen ||
                      currentRouteName == Constant.tagTGI) ||
                  (currentRouteName == Constant.tagPADScreen ||
                      currentRouteName == Constant.tagPAD) ||
                  (currentRouteName == Constant.tagMSAScreen ||
                      currentRouteName == Constant.tagMSA))
              ? IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () {
                    Get.back();
                  },
                )
              : Builder(builder: (context) {
                  return IconButton(
                    onPressed: () {
                      // openDrawer(_scaffoldKey);
                      Scaffold.of(context).openDrawer();
                    },
                    icon: const Icon(Icons.menu),
                  );
                }),
      actions: ((currentRouteName == Constant.tagProjectManagementScreen ||
              currentRouteName == Constant.tagProjectManagement))
          ? [
              IconButton(
                  onPressed: () {
                    if (kDebugMode) {
                      print("Project Filter");
                    }
                    Get.to(const ProjectFilterScreen());
                  },
                  icon: const Icon(Icons.filter_alt_outlined))
            ]
          : ((currentRouteName == Constant.tagDocumentsScreen ||
                  currentRouteName == Constant.tagDocuments))
              ? [
                  IconButton(
                      onPressed: () {
                        if (kDebugMode) {
                          print("Document Filter");
                        }
                        Get.to(const DocumentFilterScreen());
                      },
                      icon: const Icon(Icons.filter_alt_outlined))
                ]
              : ((currentRouteName == Constant.tagProfileScreen ||
                      currentRouteName == Constant.tagProfile))
                  ? [
                      IconButton(
                          onPressed: () {
                            if (kDebugMode) {
                              print("Edit Profile");
                            }
                            final controller = Get.find<ProfileViewModel>();
                            controller.doEdit();
                          },
                          icon: const Icon(Icons.edit))
                    ]
                  : null,
      // Bottom is used to add some widget below the Title such as Sub Title/Search Bars/Tabs/Divider etc.
      bottom: (currentRouteName == Constant.tagLoginScreen ||
              currentRouteName == Constant.tagLogin ||
              currentRouteName == Constant.tagForgotPasswordScreen ||
              currentRouteName == Constant.tagForgotPassword)
          ? null
          : PreferredSize(
              preferredSize: const Size.fromHeight(1.0),
              child: Container(
                color: Colors.grey,
                child: const Divider(height: 1.0),
              ),
            ),
    );
  }

  @protected
  Widget buildScreen(BuildContext context);

  Drawer buildDrawer(
      BuildContext context, String currentRouteName, RxString currentTheme) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
              child: Stack(
            children: [
              // Obx(() => Align(
              //       alignment: Alignment.topRight,
              //       child: IconButton(
              //           onPressed: () async {
              //             final String storedTheme = await getStoredTheme();
              //             if (storedTheme == AppTheme.lightTheme) {
              //               Get.changeThemeMode(ThemeMode.dark);
              //               setStoredTheme(AppTheme.darkTheme);
              //             } else {
              //               Get.changeThemeMode(ThemeMode.light);
              //               setStoredTheme(AppTheme.lightTheme);
              //             }
              //           },
              //           icon: currentTheme.value == AppTheme.lightTheme
              //               ? const Icon(Icons.light_mode_outlined)
              //               : const Icon(Icons.dark_mode_outlined)),
              //     )),
              Expanded(
                child: Center(
                  child: Text(AppStrings.appName.tr,
                      style: const TextStyle(
                          fontSize: 18,
                          fontFamily: AppTextConstant.poppinsBold)),
                ),
              ),
            ],
          )),
          ListTile(
            title: Text(AppStrings.projectManagement.tr,
                style: const TextStyle(
                    fontSize: 14, fontFamily: AppTextConstant.poppinsMedium)),
            selected: returnIndexBasedOnScreen(currentRouteName) == 0,
            onTap: () => setSelected(0),
          ),
          ListTile(
            title: Text(AppStrings.documentManagement.tr,
                style: const TextStyle(
                    fontSize: 14, fontFamily: AppTextConstant.poppinsMedium)),
            selected: returnIndexBasedOnScreen(currentRouteName) == 1,
            onTap: () => setSelected(1),
          ),
          ListTile(
            title: Text(AppStrings.profile.tr,
                style: const TextStyle(
                    fontSize: 14, fontFamily: AppTextConstant.poppinsMedium)),
            selected: returnIndexBasedOnScreen(currentRouteName) == 2,
            onTap: () => setSelected(2),
          ),
          ListTile(
            title: Text(AppStrings.notifications.tr,
                style: const TextStyle(
                    fontSize: 14, fontFamily: AppTextConstant.poppinsMedium)),
            selected: returnIndexBasedOnScreen(currentRouteName) == 3,
            onTap: () => setSelected(3),
          ),
          ListTile(
            title: Text(AppStrings.changePassword.tr,
                style: const TextStyle(
                    fontSize: 14, fontFamily: AppTextConstant.poppinsMedium)),
            selected: returnIndexBasedOnScreen(currentRouteName) == 4,
            onTap: () => setSelected(4),
          ),
          ListTile(
            title: Text(AppStrings.changeLanguage.tr,
                style: const TextStyle(
                    fontSize: 14, fontFamily: AppTextConstant.poppinsMedium)),
            selected: returnIndexBasedOnScreen(currentRouteName) == 5,
            onTap: () => setSelected(5),
          ),
          ListTile(
            title: Text(AppStrings.logout.tr,
                style: const TextStyle(
                    fontSize: 14, fontFamily: AppTextConstant.poppinsMedium)),
            onTap: () => {doLogout(), Scaffold.of(context).closeDrawer()},
          ),
        ],
      ),
    );
  }

  int returnIndexBasedOnScreen(String currentRoute) {
    if (currentRoute == Constant.tagProjectManagementScreen ||
        currentRoute == Constant.tagProjectManagement) {
      return 0;
    } else if (currentRoute == Constant.tagDocumentsScreen ||
        currentRoute == Constant.tagDocuments) {
      return 1;
    } else if (currentRoute == Constant.tagProfileScreen ||
        currentRoute == Constant.tagProfile) {
      return 2;
    } else if (currentRoute == Constant.tagNotificationsScreen ||
        currentRoute == Constant.tagNotifications) {
      return 3;
    } else if (currentRoute == Constant.tagChangePasswordScreen ||
        currentRoute == Constant.tagChangePassword) {
      return 4;
    } else if (currentRoute == Constant.tagChangeLanguageScreen ||
        currentRoute == Constant.tagChangeLanguage) {
      return 5;
    }
    return 0;
  }

  void setSelected(int index) async {
    switch (index) {
      case 0:
        Get.off(const ProjectManagementScreen());
        break;
      case 1:
        Get.off(const DocumentsScreen());
        break;
      case 2:
        Get.off(const ProfileScreen());
        break;
      case 3:
        Get.off(const NotificationsScreen());
        break;
      case 4:
        Get.off(const ChangePasswordScreen());
        break;
      case 5:
        Get.off(const ChangeLanguageScreen());
        break;
      case 6:
        break;
    }
  }
}
