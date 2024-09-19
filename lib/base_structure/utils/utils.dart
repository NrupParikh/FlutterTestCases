import 'package:encrypt/encrypt.dart' as encrypt;
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_jailbreak_detection/flutter_jailbreak_detection.dart';
import 'package:get/get.dart';

import '../common_widgets/custom_dialog.dart';
import '../constants/app_key.dart';
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

Future<bool> isUserLoggedIn() async {
  final storedValue =
      await SecureStorageSingleton().storage.read(key: AppKey.keyIsLoggedIn);
  return storedValue != null ? bool.parse(storedValue) : false;
}

String getCurrentRouteName() {
  final currentRoute = Get.currentRoute;
  final routeName = currentRoute.substring(currentRoute.lastIndexOf('/') + 1);
  return routeName;
}

void openDrawer(GlobalKey<ScaffoldState> scaffoldKey) {
  scaffoldKey.currentState?.openDrawer();
}

void closeDrawer(GlobalKey<ScaffoldState> scaffoldKey) {
  scaffoldKey.currentState?.closeDrawer();
}

String getTitle(String currentRouteName) {
  String title = AppStrings.appName;

  if (currentRouteName == "LoginScreen" || currentRouteName == "login") {
    title = AppStrings.lblSignInNow;
  } else if (currentRouteName == "ForgotPasswordScreen" ||
      currentRouteName == "forgotPassword") {
    title = AppStrings.lblForgotPassword;
  } else if (currentRouteName == "HomeScreen" || currentRouteName == "home") {
    title = AppStrings.lblProjectManagement;
  } else if (currentRouteName == "DocumentsScreen" ||
      currentRouteName == "documents") {
    title = AppStrings.lblDocumentManagement;
  } else if (currentRouteName == "ProfileScreen" ||
      currentRouteName == "profile") {
    title = AppStrings.lblProfile;
  } else if (currentRouteName == "NotificationsScreen" ||
      currentRouteName == "notifications") {
    title = AppStrings.lblNotifications;
  } else if (currentRouteName == "ChangePasswordScreen" ||
      currentRouteName == "changePassword") {
    title = AppStrings.lblChangePassword;
  } else if (currentRouteName == "ChangeLanguageScreen" ||
      currentRouteName == "changeLanguage") {
    title = AppStrings.lblChangeLanguage;
  }

  return title;
}

void doLogout(scaffoldKey) async {
  final result = await CustomDialog.showOkCancelDialog(
      AppStrings.appName, AppStrings.msgLogoutConfirmation);
  if (result) {
    // set false to key_is_loggedIn and go to login by remove all stacks
    // await SecureStorageSingleton().storage.write(
    //     key: AppKey.keyIsLoggedIn, value: false.toString());

    // Remove all secure storage key(s)
    await SecureStorageSingleton().storage.deleteAll();

    Get.offAll(LoginScreen());
    closeDrawer(scaffoldKey);
  }
}
