import 'package:flutter_application_1/base_structure/routes/app_route.dart';
import 'package:flutter_application_1/base_structure/ui/forgot_password_screen.dart';
import 'package:flutter_application_1/base_structure/ui/home_screen.dart';
import 'package:flutter_application_1/base_structure/ui/login_screen.dart';
import 'package:get/get.dart';

class AppPages {
  // static const initial = Routes.initial;

  static final routes = [
    GetPage(name: Routes.login, page: () => LoginScreen()),
    GetPage(name: Routes.forgotPassword, page: () => ForgotPasswordScreen()),
    GetPage(name: Routes.home, page: () =>  HomeScreen()),
  ];
}
