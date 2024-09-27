import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter_application_1/base_structure/base/base_view_model_getx.dart';
import 'package:flutter_application_1/base_structure/utils/utils.dart';
import 'package:get/get.dart';

import '../model/app_user.dart';
import '../utils/preferences.dart';

class ProjectManagementViewModel extends BaseViewModel {
  RxInt count = 0.obs;

  RxString firstName = "".obs;
  RxString lastName = "".obs;
  RxString email = "".obs;
  RxString token = "".obs;

  @override
  void init() {
    super.init();
    getStoredUserData();
  }

  void increaseCount() async {
    count(count.value + 1);

    final envData = envDetails();
    if (kDebugMode) {
      print("EnvDetails $envData");
    }

    final lang = await getStoredLanguage();
    if (kDebugMode) {
      debugPrint("Stored Language $lang");
    }

    //   final e = doEncryption("Hello");
    // if (kDebugMode) {
    //   debugPrint("EncryptedData ${e.base64}");
    // }

    //  final d = doDecryption(e);
    // if (kDebugMode) {
    //   debugPrint("DecryptedData $d");
    // }

    // String? isLoggedIn = await SecureStorageSingleton().storage.read(key: AppKey.keyIsLoggedIn);
    //   if (kDebugMode) {
    //   debugPrint("isLoggedIn  $isLoggedIn");
    // }

    final String currentRouteName = getCurrentRouteName();

    if (kDebugMode) {
      print("currentRouteNameA = $currentRouteName");
    }
  }

  Future<void> getStoredUserData() async {
    final jsonString = await getUserData();
    if (jsonString != "") {
      final userMap = jsonDecode(jsonString) as Map<String, dynamic>;
      final object = AppUser.fromJson(userMap);

      if (kDebugMode) {
        debugPrint("First Name  ${object.firstName.toString()}");
        debugPrint("Last Name  ${object.lastName.toString()}");
        debugPrint("Email  ${object.email.toString()}");
        debugPrint("Token  ${object.token.toString()}");
      }

      firstName.value = object.firstName.toString();
      lastName.value = object.lastName.toString();
      email.value = object.email.toString();
      token.value = object.token.toString();
    }
  }

  @override
  void onInit() {
    super.onInit();
    if (kDebugMode) {
      print("Sample VM Initialized");
    }
  }
}



  // final e = doEncryption("Hello");
  // if (kDebugMode) {
  //   debugPrint("EncryptedData ${e.base64}");
  // }

  //  final d = doDecryption(e);
  // if (kDebugMode) {
  //   debugPrint("DecryptedData $d");
  // }

  
  // isJailBroken().then((isJailbroken) {
  //   debugPrint('Device is jailbroken: $isJailbroken');
  // }).catchError((error) {
  //   debugPrint('Error: $error');
  // });

  // isDeveloperModeOn().then((isRooted) {
  //   debugPrint('Developer mode is ON: $isRooted');
  // }).catchError((error) {
  //   debugPrint('Error: $error');
  // });

  // final envData = envDetails();
  //  if (kDebugMode) {
  //    print("EnvDetails $envData");
  //  }

