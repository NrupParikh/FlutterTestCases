
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
import 'package:flutter_application_1/base_structure/vm/notification_controller.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';

import '../common_widgets/custom_dialog.dart';
import '../utils/preferences.dart';
import 'project_filter_screen.dart';

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
  @override
  void initState() {
    super.initState();
    initialization();

    handleForgroundNotifications();
    handleBackgroundNotifications();
    
  }

 // ----------  Forgound Notifications (onMessage) -------------

  void handleForgroundNotifications() {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) async{
      if (kDebugMode) {
        print("Notification: At Forground received");
        print("Message Data ${message.data}");

        if (message.notification != null) {
          print("Title ${message.notification!.title}");
          print("Body ${message.notification!.body}");


          // showDialog(
          //     context: context,
          //     builder: (context) => AlertDialog(
          //           title: Text(message.notification!.title ?? ""),
          //           content: Text(message.notification!.body ?? ""),
          //           actions: [
          //             TextButton(
          //                 onPressed: () => Navigator.pop(context),
          //                 child: const Text("OK"))
          //           ],
          //         ));
        }
      }
    });
  }

 // ----------  Background Notifications (onMessageOpenedApp) -------------

   void handleBackgroundNotifications() {
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      if (kDebugMode) {
        print("Notification : At Background received");
        print("Message Data ${message.data}");

        if (message.notification != null) {
          print("Title ${message.notification!.title}");
          print("Body ${message.notification!.body}");

            isUserLoggedIn().then((value) => {
              if(value==true){
                Get.to(const ProjectFilterScreen())
              }                 
            });

           // Navigate to a specific screen or perform a task based on the notification
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => NotificationDetailsScreen(
            //       title: message.notification!.title ?? '',
            //       body: message.notification!.body ?? '',
            //     ),
            //   ),
            // );

        }
      }
    });
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
      // builder: (context,child){
      //   return GetBuilder<NotificationController>(
      //     init: NotificationController(),
      //     builder: (NotificationController controller) {
      //       return MaterialApp(
      //         home: Scaffold(
      //           body: Center(
      //             child: Obx(() {
      //               if(controller.notificationData.value!=null){
      //                 final notificationValue = controller.notificationData.value!;
      //                 return AlertDialog(
      //                   title: Text(notificationValue.notification?.title ?? ""),
      //                   content: Text(notificationValue.notification?.body ?? ""),
      //                   actions: [
      //                     TextButton(onPressed: (){
      //                       controller.notificationData.value = null;
      //                         Navigator.pop(context);
      //                     }, child: const Text("Ok"))
      //                   ],
      //                 );
      //               }else {
      //                  return Container();
      //               }
                   
      //             }),
      //           ),
      //         ),
      //       );
      //     },
      //   );
      // },
    );
  }
}
