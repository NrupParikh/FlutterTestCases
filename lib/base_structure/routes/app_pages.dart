import 'package:flutter_application_1/base_structure/routes/app_route.dart';
import 'package:flutter_application_1/base_structure/ui/change_password_screen.dart';
import 'package:flutter_application_1/base_structure/ui/document_filter_screen.dart';
import 'package:flutter_application_1/base_structure/ui/documents_screen.dart';
import 'package:flutter_application_1/base_structure/ui/forgot_password_screen.dart';
import 'package:flutter_application_1/base_structure/ui/home_screen.dart';
import 'package:flutter_application_1/base_structure/ui/login_screen.dart';
import 'package:flutter_application_1/base_structure/ui/notifications_screen.dart';
import 'package:flutter_application_1/base_structure/ui/profile_screen.dart';
import 'package:flutter_application_1/base_structure/ui/project_filter_screen.dart';
import 'package:get/get.dart';

import '../ui/change_language_screen.dart';

class AppPages {
  // static const initial = Routes.initial;

  static final routes = [
    GetPage(name: Routes.login, page: () => LoginScreen()),
    GetPage(name: Routes.forgotPassword, page: () => ForgotPasswordScreen()),
    GetPage(name: Routes.home, page: () =>  HomeScreen()),
    GetPage(name: Routes.documents, page: ()=>DocumentsScreen()),
    GetPage(name: Routes.profile, page: ()=>ProfileScreen()),
    GetPage(name: Routes.notifications, page: ()=>NotificationsScreen()),
    GetPage(name: Routes.changePassword, page: ()=>ChangePasswordScreen()),
    GetPage(name: Routes.changeLanguage, page: ()=>ChangeLanguageScreen()),
    GetPage(name: Routes.projectFilter, page: ()=>ProjectFilterScreen()),
    GetPage(name: Routes.documentFilter, page: ()=>DocumentFilterScreen()),
  ];
}
