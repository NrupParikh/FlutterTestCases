import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/base_structure/base/constant.dart';
import 'package:flutter_application_1/base_structure/base/local/local.dart';
import 'package:flutter_application_1/base_structure/bindings/app_bindings.dart';
import 'package:flutter_application_1/base_structure/constants/app_strings.dart';
import 'package:flutter_application_1/base_structure/constants/app_theme.dart';
import 'package:flutter_application_1/base_structure/routes/app_pages.dart';
import 'package:flutter_application_1/base_structure/ui/forgot_password_screen.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';

import '../../main.dart';
import '../base/notification_service.dart';
import '../utils/preferences.dart';
import '../utils/utils.dart';

class MyBaseApp extends StatefulWidget {
  final String myInitialRoute;
  final String myInitialLanguage;
  final String myInitialTheme;

  const MyBaseApp(
      this.myInitialRoute, this.myInitialLanguage, this.myInitialTheme,
      {super.key});

  @override
  State<MyBaseApp> createState() => _MyBaseAppState();
}

class _MyBaseAppState extends State<MyBaseApp> {

  final FirebaseMessaging messaging = FirebaseMessaging.instance;
  NotificationService notificationService = NotificationService();
  @override
  void initState() {
    super.initState();
    initialization();
    notificationService.requestNotificationPermission();
    getAndroidToken();
    getIOSToken();
    listenToMessage();
  }

  void initialization() async {
    if (kDebugMode) {
      print("Pausing....");
    }

    await Future.delayed(const Duration(seconds: 3));
    FlutterNativeSplash.remove();

    await dotenv.load(fileName: ".env");
  }


// For Android
  void getAndroidToken() async {
    String? androidFCMToken = await messaging.getToken();
    if (kDebugMode) {
      if (androidFCMToken != null) {
        print('Firebase Token for Android: $androidFCMToken');
        setFirebaseToken(androidFCMToken);
        firebaseToken.value = await getFirebaseToken();
        print("firebaseTokenIS = ${firebaseToken.value}");
      }
    }
  }

  // For IOS
  void getIOSToken() async {
    String? apnsToken = await messaging.getAPNSToken();
    if (kDebugMode) {
      if (apnsToken != null) {
        print('Firebase Token for IOS: $apnsToken');
        setFirebaseToken(apnsToken);
        firebaseToken.value = await getFirebaseToken();
        print("firebaseTokenIS = ${firebaseToken.value}");
      }
    }
  }

  void listenToMessage() {
    // Listen forground notification and show in the notification tray using show Notification
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      if (kDebugMode) {
        print("onMessage.listen");
      }
      if (message.notification != null) {
        // Show a custom notification using flutter_local_notifications
        showNotification(
            message.notification!.title, message.notification!.body);
      }
    });

    // Get called when notfication comes while app is killed or in background and user tap on it
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      if (kDebugMode) {
        print("onMessageOpenedApp.listen");
        print("Screen is ${message.data["screen"]}");
      }
      Get.to(const ForgotPasswordScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    // Set status bar and navigation bar color
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.green,
        systemNavigationBarColor: Colors.green,
        systemNavigationBarDividerColor: Colors.white));

    if (kDebugMode) {
      print("myInitialRoute =  ${widget.myInitialRoute.toString()}");
      print("myInitialLanguage =  ${widget.myInitialLanguage.toString()}");
      print("myInitialTheme =  ${widget.myInitialTheme.toString()}");
    }
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: AppStrings.appName,
        theme: AppTheme.appPrimaryDarkTheme(),
        darkTheme: AppTheme.appPrimaryDarkTheme(),
        // For application specific theme support
        // themeMode: (widget.myInitialTheme.toString() == AppTheme.lightTheme)
        //     ? ThemeMode.light
        //     : ThemeMode.dark,
        // For system specific theme theme support
        themeMode: ThemeMode.system,
        defaultTransition: Transition.native,
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
        ]);
  }
}
