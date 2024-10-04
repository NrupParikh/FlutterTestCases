import 'package:flutter_application_1/base_structure/vm/change_language_view_model.dart';
import 'package:flutter_application_1/base_structure/vm/change_password_view_model.dart';
import 'package:flutter_application_1/base_structure/vm/document_filter_view_model.dart';
import 'package:flutter_application_1/base_structure/vm/documents_view_model.dart';
import 'package:flutter_application_1/base_structure/vm/fast_track_evaluation_view_model.dart';
import 'package:flutter_application_1/base_structure/vm/forgot_password_view_model.dart';
import 'package:flutter_application_1/base_structure/vm/login_view_model.dart';
import 'package:flutter_application_1/base_structure/vm/notifications_view_model.dart';
import 'package:flutter_application_1/base_structure/vm/nrd_view_model.dart';
import 'package:flutter_application_1/base_structure/vm/profile_view_model.dart';
import 'package:flutter_application_1/base_structure/vm/project_filter_view_model.dart';
import 'package:flutter_application_1/base_structure/vm/project_management_view_model.dart';
import 'package:flutter_application_1/base_structure/vm/rch_view_model.dart';
import 'package:flutter_application_1/base_structure/vm/rnd_view_model.dart';
import 'package:get/get.dart';

// Define each VM here to bind with View
class AppBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProjectManagementViewModel(), fenix: true);
    Get.lazyPut(() => LoginViewModel(), fenix: true);
    Get.lazyPut(() => ForgotPasswordViewModel(), fenix: true);
    Get.lazyPut(() => DocumentsViewModel(),fenix: true);
    Get.lazyPut(() => ProfileViewModel(),fenix: true);
    Get.lazyPut(() => NotificationsViewModel(),fenix: true);
    Get.lazyPut(() => ChangePasswordViewModel(),fenix: true);
    Get.lazyPut(() => ChangeLanguageViewModel(),fenix: true);
    Get.lazyPut(() => ProjectFilterViewModel(),fenix: true);
    Get.lazyPut(() => DocumentFilterViewModel(),fenix: true);
    Get.lazyPut(() => NRDViewModel(),fenix: true);
    Get.lazyPut(() => RCHViewModel(),fenix: true);
    Get.lazyPut(() => FastTrackEvaluationViewModel(),fenix: true);
    Get.lazyPut(() => RNDViewModel(),fenix: true);
  }
}
