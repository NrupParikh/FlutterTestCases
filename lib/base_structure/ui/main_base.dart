import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/base_structure/base/constant.dart';
import 'package:flutter_application_1/base_structure/base/local/local.dart';
import 'package:flutter_application_1/base_structure/bindings/app_bindings.dart';
import 'package:flutter_application_1/base_structure/constants/app_strings.dart';
import 'package:flutter_application_1/base_structure/routes/app_pages.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';


class MyBaseApp extends StatefulWidget {
  final String myInitialRoute;
  final String myInitialLanguage;

  const MyBaseApp(this.myInitialRoute, this.myInitialLanguage, {super.key});

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
  }
  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      print("myInitialRoute =  ${widget.myInitialRoute.toString()}");
    }
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppStrings.appName,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lime.shade500),
        scaffoldBackgroundColor: Colors.lime.shade100,
        useMaterial3: true,
      ),
      darkTheme:  ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green.shade500),
        scaffoldBackgroundColor: Colors.green.shade100,
        useMaterial3: true,
      ),
      themeMode: ThemeMode.system,
      defaultTransition: Transition.rightToLeft,
      transitionDuration:
          const Duration(milliseconds: Constant.transitionDuration),
      enableLog: true,
      initialBinding: AppBindings(),
      initialRoute: widget.myInitialRoute,
      getPages: AppPages.routes,
      translations: Languages(),
      locale: Locale(widget.myInitialLanguage),
      fallbackLocale: const Locale('en', 'US'),

      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', 'US'),
        Locale('it', 'IT'),
        Locale('es', 'ES'),
      ],
    );
  }
}
