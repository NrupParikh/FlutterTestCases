import 'package:encrypt/encrypt.dart' as encrypt;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/base_structure/constants/app_key.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_jailbreak_detection/flutter_jailbreak_detection.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../main.dart';
import '../base/constant.dart';
import '../common_widgets/custom_dialog.dart';
import '../constants/app_strings.dart';
import '../singleton/secure_storage_singleton.dart';
import '../ui/login_screen.dart';

final iv = encrypt.IV.fromLength(16);
final envKey = dotenv.env['KEY'];
final key = encrypt.Key.fromUtf8("$envKey");

final encrypter = encrypt.Encrypter(encrypt.AES(key));

// Reading .env file data
String envDetails() {
  return 'ENV KEY: $envKey';
}

// Encryption
encrypt.Encrypted doEncryption(String plainText) {
  return encrypter.encrypt(plainText, iv: iv);
}

// Decryption
String doDecryption(encrypt.Encrypted encryptedData) {
  return encrypter.decrypt(encryptedData, iv: iv);
}

// Check Jailbroken iOS Devices
Future<bool> isJailBroken() async {
  return FlutterJailbreakDetection.jailbroken;
}

// Check Developer Mode On
Future<bool> isDeveloperModeOn() async {
  return FlutterJailbreakDetection.developerMode;
}

String getCurrentRouteName() {
  final currentRoute = Get.currentRoute;
  if (kDebugMode) {
    print("CurrentRoute =  $currentRoute");
  }
  final routeName = currentRoute.substring(currentRoute.lastIndexOf('/') + 1);
  return routeName;
}

void openDrawer(GlobalKey<ScaffoldState> scaffoldKey) {
  if (kDebugMode) {
    print("Open Drawer ${scaffoldKey.toString()}");
  }
  scaffoldKey.currentState?.openDrawer();
}

void closeDrawer(GlobalKey<ScaffoldState> scaffoldKey) {
  if (kDebugMode) {
    print("Close Drawer ${scaffoldKey.toString()}");
  }
  scaffoldKey.currentState?.closeDrawer();
}

String getTitle(String currentRouteName) {
  String title = AppStrings.appName.tr;

  if (currentRouteName == Constant.tagLoginScreen ||
      currentRouteName == Constant.tagLogin) {
    title = AppStrings.lblSignInNow.tr;
  } else if (currentRouteName == Constant.tagForgotPasswordScreen ||
      currentRouteName == Constant.tagForgotPassword) {
    title = AppStrings.lblForgotPassword.tr;
  } else if (currentRouteName == Constant.tagProjectManagementScreen ||
      currentRouteName == Constant.tagProjectManagement) {
    title = AppStrings.projectManagement.tr;
  } else if (currentRouteName == Constant.tagDocumentsScreen ||
      currentRouteName == Constant.tagDocuments) {
    title = AppStrings.manageDocs.tr;
  } else if (currentRouteName == Constant.tagProfileScreen ||
      currentRouteName == Constant.tagProfile) {
    title = AppStrings.profile.tr;
  } else if (currentRouteName == Constant.tagNotificationsScreen ||
      currentRouteName == Constant.tagNotifications) {
    title = AppStrings.notifications.tr;
  } else if (currentRouteName == Constant.tagChangePasswordScreen ||
      currentRouteName == Constant.tagChangePassword) {
    title = AppStrings.changePassword.tr;
  } else if (currentRouteName == Constant.tagChangeLanguageScreen ||
      currentRouteName == Constant.tagChangeLanguage) {
    title = AppStrings.changeLanguage.tr;
  } else if (currentRouteName == Constant.tagProjectFilterScreen ||
      currentRouteName == Constant.tagProjectFilter) {
    title = AppStrings.projectFilter.tr;
  } else if (currentRouteName == Constant.tagDocumentFilterScreen ||
      currentRouteName == Constant.tagDocuments) {
    title = AppStrings.documentFilter.tr;
  } else if (currentRouteName == Constant.tagNRDScreen ||
      currentRouteName == Constant.tagNRD) {
    title = AppStrings.lblNRD.tr;
  } else if (currentRouteName == Constant.tagRCHScreen ||
      currentRouteName == Constant.tagRCH) {
    title = AppStrings.lblRCH.tr;
  } else if (currentRouteName == Constant.tagTGIScreen ||
      currentRouteName == Constant.tagTGI) {
    title = AppStrings.lblTGI.tr;
  } else if (currentRouteName == Constant.tagPADScreen ||
      currentRouteName == Constant.tagPAD) {
    title = AppStrings.lblPAD.tr;
  } else if (currentRouteName == Constant.tagMSAScreen ||
      currentRouteName == Constant.tagMSA) {
    title = AppStrings.lblMSA.tr;
  } else if (currentRouteName == Constant.tagSocialScreen ||
      currentRouteName == Constant.tagSocial) {
    title = "Social";
  } else if (currentRouteName == Constant.tagProfileScreen ||
      currentRouteName == Constant.tagProfile) {
    title = "Profile";
  } 
  return title;
}

void doLogout() async {
  final result = await CustomDialog.showOkCancelDialog(
      AppStrings.appName.tr, AppStrings.msgLogoutConfirmation.tr);
  if (result) {
    // set false to key_is_loggedIn and go to login by remove all stacks
    // await SecureStorageSingleton().storage.write(
    //     key: AppKey.keyIsLoggedIn, value: false.toString());

    // // Remove all secure storage key(s)
    // await SecureStorageSingleton().storage.deleteAll();

    // Not delete firebase token here.
    await SecureStorageSingleton().storage.delete(key: AppKey.keyIsLoggedIn);
    await SecureStorageSingleton().storage.delete(key: AppKey.keyStoredLang);
    await SecureStorageSingleton().storage.delete(key: AppKey.keyStoredTheme);
    await SecureStorageSingleton().storage.delete(key: AppKey.keyUserObject);

    Get.offAll(const LoginScreen());
  }
}

String getDateInddMMyyyy(DateTime? selectedDateTime) {
  if (selectedDateTime != null) {
    String formattedDate = DateFormat("dd-MM-yyyy").format(selectedDateTime);
    return formattedDate;
  } else {
    return "";
  }
}

Future<DateTime?> openDateTimePicker(BuildContext context, String helpText,
    final DateTime initialDate, DateTime firstDate, DateTime lastDate) async {
  final DateTime? pickedDate = await showDatePicker(
    helpText: helpText,
    context: context,
    initialDate: initialDate,
    firstDate: firstDate,
    lastDate: lastDate,
  );
  return pickedDate;
}

Color getPrimaryColor() {
  return Get.theme.primaryColor;
}

bool isKeyboardOpen(BuildContext context) {
  return MediaQuery.of(context).viewInsets.bottom != 0;
}

// ----------------- Show notification in notification tray
// In-memory list to hold notifications

final List<String> notificationList = [];

void showNotification(String? title, String? body) async {
  // Add the new notification to the in-memory list
  notificationList.add('$title|$body');

  //  final random = Random();
  // int randomNumber = random.nextInt(100);
  await FlutterLocalNotificationsPlugin().show(
      notificationList.length,
      title.toString(),
      body,
      const NotificationDetails(
        android: AndroidNotificationDetails("channelId", "channelName",
            channelDescription: "channelDescription",
            importance: Importance.high,
            priority: Priority.high,
            icon: '@mipmap/ic_launcher',
            groupKey: "groupKey"),
      ));

  if (kDebugMode) {
    print("Title $title");
    print("Body $body");
    print("NotificationList Size ${notificationList.length}");
  }

  // --------------------- Group Summary Notification using InboxStyle
  final List<String> lines = notificationList
      .map((notification) => notification.split('|').join(': '))
      .toList();

  if (kDebugMode) {
    print("lines Size ${lines.length}");
  }

  final InboxStyleInformation inboxStyleInformation = InboxStyleInformation(
    lines,
    contentTitle: '${notificationList.length} new messages',
    summaryText: 'You have ${notificationList.length} new notifications',
  );

  await localNotifications.show(
    0, // Static ID for the summary notification
    'Grouped Notifications',
    '${notificationList.length} new messages',
    NotificationDetails(
      android: AndroidNotificationDetails(
        "channelId",
        "channelName",
        channelDescription: "channelDescription",
        importance: Importance.high,
        priority: Priority.high,
        groupKey: "groupKey",
        setAsGroupSummary: true, // Mark this as the group summary
        styleInformation: inboxStyleInformation, // Set InboxStyle here
        icon: '@mipmap/ic_launcher',
      ),
    ),
  );
  // ---------------------------------------------
}
