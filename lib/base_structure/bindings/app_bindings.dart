import 'package:flutter_application_1/base_structure/vm/change_language_view_model.dart';
import 'package:flutter_application_1/base_structure/vm/change_password_view_model.dart';
import 'package:flutter_application_1/base_structure/vm/document_filter_view_model.dart';
import 'package:flutter_application_1/base_structure/vm/documents_view_model.dart';
import 'package:flutter_application_1/base_structure/vm/fast_track_evaluation_view_model.dart';
import 'package:flutter_application_1/base_structure/vm/forgot_password_view_model.dart';
import 'package:flutter_application_1/base_structure/vm/industrial_review_view_model.dart';
import 'package:flutter_application_1/base_structure/vm/industrial_trial_view_model.dart';
import 'package:flutter_application_1/base_structure/vm/six_pac_log_activity_view_model.dart';
import 'package:flutter_application_1/base_structure/vm/login_view_model.dart';
import 'package:flutter_application_1/base_structure/vm/msa_view_model.dart';
import 'package:flutter_application_1/base_structure/vm/notifications_view_model.dart';
import 'package:flutter_application_1/base_structure/vm/nrd_view_model.dart';
import 'package:flutter_application_1/base_structure/vm/pad_commertial_review_view_model.dart';
import 'package:flutter_application_1/base_structure/vm/pad_department_view_model.dart';
import 'package:flutter_application_1/base_structure/vm/pad_finance_view_model.dart';
import 'package:flutter_application_1/base_structure/vm/pad_production_view_model.dart';
import 'package:flutter_application_1/base_structure/vm/pad_purchasing_view_model.dart';
import 'package:flutter_application_1/base_structure/vm/pad_view_model.dart';
import 'package:flutter_application_1/base_structure/vm/pad_warehouse_view_model.dart';
import 'package:flutter_application_1/base_structure/vm/profile_view_model.dart';
import 'package:flutter_application_1/base_structure/vm/project_filter_view_model.dart';
import 'package:flutter_application_1/base_structure/vm/project_management_view_model.dart';
import 'package:flutter_application_1/base_structure/vm/purchasing_review_view_model.dart';
import 'package:flutter_application_1/base_structure/vm/purchasing_view_model.dart';
import 'package:flutter_application_1/base_structure/vm/qc_inspection_view_model.dart';
import 'package:flutter_application_1/base_structure/vm/rch_quality_view_model.dart';
import 'package:flutter_application_1/base_structure/vm/rch_regulatory_view_model.dart';
import 'package:flutter_application_1/base_structure/vm/rch_rnd_view_model.dart';
import 'package:flutter_application_1/base_structure/vm/rch_view_model.dart';
import 'package:flutter_application_1/base_structure/vm/rnd_view_model.dart';
import 'package:flutter_application_1/base_structure/vm/six_pac_home_view_model.dart';
import 'package:flutter_application_1/base_structure/vm/six_pac_tab1_view_model.dart';
import 'package:flutter_application_1/base_structure/vm/tgi_view_model.dart';
import 'package:flutter_application_1/base_structure/vm/warehousing_view_model.dart';
import 'package:get/get.dart';

import '../vm/haccp.dart';
import '../vm/six_pac_tab2_view_model.dart';
import '../vm/six_pac_tab3_view_model.dart';
import '../vm/six_pac_tab4_view_model.dart';

// Define each VM here to bind with View
class AppBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProjectManagementViewModel(), fenix: true);
    Get.lazyPut(() => LoginViewModel(), fenix: true);
    Get.lazyPut(() => ForgotPasswordViewModel(), fenix: true);
    Get.lazyPut(() => DocumentsViewModel(), fenix: true);
    Get.lazyPut(() => ProfileViewModel(), fenix: true);
    Get.lazyPut(() => NotificationsViewModel(), fenix: true);
    Get.lazyPut(() => ChangePasswordViewModel(), fenix: true);
    Get.lazyPut(() => ChangeLanguageViewModel(), fenix: true);
    Get.lazyPut(() => ProjectFilterViewModel(), fenix: true);
    Get.lazyPut(() => DocumentFilterViewModel(), fenix: true);
    Get.lazyPut(() => NRDViewModel(), fenix: true);
    Get.lazyPut(() => RCHViewModel(), fenix: true);
    Get.lazyPut(() => FastTrackEvaluationViewModel(), fenix: true);
    Get.lazyPut(() => RNDViewModel(), fenix: true);
    Get.lazyPut(() => QCInspectionViewModel(), fenix: true);
    Get.lazyPut(() => TGIViewModel(), fenix: true);
    Get.lazyPut(() => PurchasingViewModel(), fenix: true);
    Get.lazyPut(() => WarehousingViewModel(), fenix: true);
    Get.lazyPut(() => PADViewModel(), fenix: true);
    Get.lazyPut(() => MSAViewModel(), fenix: true);
    Get.lazyPut(() => HACCPViewModel(), fenix: true);
    Get.lazyPut(() => PurchasingReviewViewModel(), fenix: true);
    Get.lazyPut(() => IndustrialTrialViewModel(), fenix: true);
    Get.lazyPut(() => IndustrialReviewViewModel(), fenix: true);

    Get.lazyPut(() => RchRNDViewModel(), fenix: true);
    Get.lazyPut(() => RchQualityViewModel(), fenix: true);
    Get.lazyPut(() => RchRegulatoryViewModel(), fenix: true);
    
    Get.lazyPut(() => PadFinanceViewModel(), fenix: true);
    Get.lazyPut(() => PadPurchasingViewModel(), fenix: true);
    Get.lazyPut(() => PadProductionViewModel(), fenix: true);
    Get.lazyPut(() => PadWarehouseViewModel(), fenix: true);

    Get.lazyPut(() => PadDepartmentViewModel(), fenix: true);
    Get.lazyPut(() => PadCommertialReviewViewModel(), fenix: true);
    
    // SIX PAC
    Get.lazyPut(() => SixPacTab1ViewModel(), fenix: true);
    Get.lazyPut(() => SixPacTab2ViewModel(), fenix: true);
    Get.lazyPut(() => SixPacTab3ViewModel(), fenix: true);
    Get.lazyPut(() => SixPacTab4ViewModel(), fenix: true);

    Get.lazyPut(() => SixPacHomeViewHomeModel(), fenix: true);
    Get.lazyPut(() => SixPacLogActivityViewModel(), fenix: true);
  }
}
