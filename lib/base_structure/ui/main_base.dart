import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/base_structure/base/constant.dart';
import 'package:flutter_application_1/base_structure/bindings/app_bindings.dart';
import 'package:flutter_application_1/base_structure/constants/app_strings.dart';
import 'package:flutter_application_1/base_structure/routes/app_pages.dart';
import 'package:flutter_application_1/base_structure/routes/app_route.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

// void main(){
//   runApp(const MyBaseApp());
// }

class MyBaseApp extends StatefulWidget {
  const MyBaseApp({super.key});

  @override
  State<MyBaseApp> createState() => _MyBaseAppState();
}

class _MyBaseAppState extends State<MyBaseApp> {
  @override
  void initState() {
    super.initState();
    initialization();
  }

  void initialization() async {
    if (kDebugMode) {
      print("Pausing....");
    }

    await Future.delayed(const Duration(seconds: 3));
    FlutterNativeSplash.remove();

    await dotenv.load(fileName: ".env");

    if (kDebugMode) {
      print("unPausing....");
    }
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppStrings.appName,
      // theme: AppTheme.appPrimaryLightTheme(),
      // darkTheme: AppTheme.appPrimaryDarkTheme(),
      themeMode: ThemeMode.system,
      defaultTransition: Transition.rightToLeft,
      transitionDuration:
          const Duration(milliseconds: Constant.transitionDuration),
      enableLog: true,
      initialBinding: AppBindings(),
      initialRoute: Routes.login,
      getPages: AppPages.routes,
    );
  }
}
