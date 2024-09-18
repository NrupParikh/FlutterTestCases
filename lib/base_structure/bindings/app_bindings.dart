import 'package:flutter_application_1/base_structure/vm/documents_view_model.dart';
import 'package:flutter_application_1/base_structure/vm/forgot_password_view_model.dart';
import 'package:flutter_application_1/base_structure/vm/login_view_model.dart';
import 'package:flutter_application_1/base_structure/vm/sample_view_model.dart';
import 'package:get/get.dart';

// Define each VM here to bind with View
class AppBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SampleViewModel(), fenix: true);
    Get.lazyPut(() => LoginViewModel(), fenix: true);
    Get.lazyPut(() => ForgotPasswordViewModel(), fenix: true);
    Get.lazyPut(() => DocumentsViewModel(),fenix: true);
  }
}
