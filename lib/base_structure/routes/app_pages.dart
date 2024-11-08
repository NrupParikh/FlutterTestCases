import 'package:flutter_application_1/base_structure/routes/app_route.dart';
import 'package:flutter_application_1/base_structure/ui/change_password_screen.dart';
import 'package:flutter_application_1/base_structure/ui/document_filter_screen.dart';
import 'package:flutter_application_1/base_structure/ui/documents_screen.dart';
import 'package:flutter_application_1/base_structure/ui/fast_track_evaluation_screen.dart';
import 'package:flutter_application_1/base_structure/ui/forgot_password_screen.dart';
import 'package:flutter_application_1/base_structure/ui/haccp.dart';
import 'package:flutter_application_1/base_structure/ui/industrial_review_screen.dart';
import 'package:flutter_application_1/base_structure/ui/industrial_trial_screen.dart';
import 'package:flutter_application_1/base_structure/ui/msa_screen.dart';
import 'package:flutter_application_1/base_structure/ui/nrd_screen.dart';
import 'package:flutter_application_1/base_structure/ui/pad_commertial_review_screen.dart';
import 'package:flutter_application_1/base_structure/ui/pad_department_screen.dart';
import 'package:flutter_application_1/base_structure/ui/pad_finance_screen.dart';
import 'package:flutter_application_1/base_structure/ui/pad_production_screen.dart';
import 'package:flutter_application_1/base_structure/ui/pad_purchasing_screen.dart';
import 'package:flutter_application_1/base_structure/ui/pad_screen.dart';
import 'package:flutter_application_1/base_structure/ui/pad_wherehouse_screen.dart';
import 'package:flutter_application_1/base_structure/ui/project_management_screen.dart';
import 'package:flutter_application_1/base_structure/ui/login_screen.dart';
import 'package:flutter_application_1/base_structure/ui/notifications_screen.dart';
import 'package:flutter_application_1/base_structure/ui/profile_screen.dart';
import 'package:flutter_application_1/base_structure/ui/project_filter_screen.dart';
import 'package:flutter_application_1/base_structure/ui/purchasing_review_screen.dart';
import 'package:flutter_application_1/base_structure/ui/qc_inspection.dart';
import 'package:flutter_application_1/base_structure/ui/rch_quality_screen.dart';
import 'package:flutter_application_1/base_structure/ui/rch_regulatory_screen.dart';
import 'package:flutter_application_1/base_structure/ui/rch_rnd_creen.dart';
import 'package:flutter_application_1/base_structure/ui/rch_screen.dart';
import 'package:flutter_application_1/base_structure/ui/rnd_screen.dart';
import 'package:flutter_application_1/base_structure/ui/tgi_screen.dart';
import 'package:get/get.dart';

import '../ui/change_language_screen.dart';

class AppPages {
  // static const initial = Routes.initial;

  static final routes = [
    GetPage(name: Routes.login, page: () => const LoginScreen()),
    GetPage(
        name: Routes.forgotPassword, page: () => const ForgotPasswordScreen()),
    GetPage(
        name: Routes.projectManagement,
        page: () => const ProjectManagementScreen()),
    GetPage(name: Routes.documents, page: () => const DocumentsScreen()),
    GetPage(name: Routes.profile, page: () => const ProfileScreen()),
    GetPage(
        name: Routes.notifications, page: () => const NotificationsScreen()),
    GetPage(
        name: Routes.changePassword, page: () => const ChangePasswordScreen()),
    GetPage(
        name: Routes.changeLanguage, page: () => const ChangeLanguageScreen()),
    GetPage(
        name: Routes.projectFilter, page: () => const ProjectFilterScreen()),
    GetPage(
        name: Routes.documentFilter, page: () => const DocumentFilterScreen()),
    GetPage(name: Routes.nrd, page: () => const NRDScreen()),
    GetPage(name: Routes.rch, page: () => const RCHScreen()),
    GetPage(
        name: Routes.fastTrackEvaluation,
        page: () => const FastTrackEvaluationScreen()),
    GetPage(name: Routes.rnd, page: () => const RNDScreen()),
    GetPage(name: Routes.qcInspection, page: () => const QCInspectionScreen()),
    GetPage(name: Routes.tgi, page: () => const TGIScreen()),
    GetPage(name: Routes.pad, page: () => const PADScreen()),
    GetPage(name: Routes.msa, page: () => const MSAScreen()),
    GetPage(name: Routes.haccp, page: () => const HACCPScreen()),
    GetPage(
        name: Routes.purchasingReview,
        page: () => const PurchasingReviewScreen()),
    GetPage(
        name: Routes.industrialTrial,
        page: () => const IndustrialTrialScreen()),
    GetPage(
        name: Routes.industrialReview,
        page: () => const IndustrialReviewScreen()),
    GetPage(name: Routes.rchRND, page: () => const RchRndScreen()),
    GetPage(name: Routes.rchQuality, page: () => const RchQualityScreen()),
    GetPage(
        name: Routes.rchRegulatory, page: () => const RchRegulatoryScreen()),
    GetPage(
        name: Routes.padDepartment, page: () => const PadDepartmentScreen()),
    GetPage(
        name: Routes.padCommertialReview,
        page: () => const PADCommertialReviewScreen()),
    GetPage(name: Routes.padFinanace, page: () => const PADFinanceScreen()),
    GetPage(
        name: Routes.padPurchasing, page: () => const PADPurchasingScreen()),
    GetPage(
        name: Routes.padProduction, page: () => const PADProductionScreen()),
    GetPage(
        name: Routes.padWherehouse, page: () => const PADWherehouseScreen()),
  ];
}
