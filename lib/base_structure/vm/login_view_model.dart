import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/base_structure/base/base_view_model_getx.dart';
import 'package:flutter_application_1/base_structure/constants/app_key.dart';
import 'package:flutter_application_1/base_structure/constants/app_strings.dart';
import 'package:flutter_application_1/base_structure/model/app_user.dart';
import 'package:flutter_application_1/base_structure/singleton/api_service_singleton.dart';
import 'package:flutter_application_1/base_structure/singleton/secure_storage_singleton.dart';
import 'package:get/get.dart';
import 'package:tuple/tuple.dart';

import '../api/api_service.dart';

class LoginViewModel extends BaseViewModel {
  // final service = ApiService();
  final ApiService _apiService = ApiServiceSingleton().apiService;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  var errorEmail = Rx<String?>(null);
  var errorPassword = Rx<String?>(null);

  Future<Tuple2<bool, String>> validateLogin() async {
    if (kDebugMode) {
      print("Login clicked");
    }

    final email = emailController.text.trim();
    final password = passwordController.text.trim();

    if (GetUtils.isNullOrBlank(email) == true) {
      errorEmail.value = AppStrings.valEnterEmail;
    } else {
      errorEmail.value = null;
    }

    if (GetUtils.isNullOrBlank(password) == true) {
      errorPassword.value = AppStrings.valEnterPassword;
    } else {
      errorPassword.value = null;
    }

    if (errorEmail.value == null && errorPassword.value == null) {
      try {
        var appResponse = await _apiService.login(email, password);
        if (kDebugMode) {
          print("Response  ${appResponse.data}");
        }
        if (appResponse.statusCode == 200) {
          AppUser userData = AppUser.fromJson(appResponse.data);

          await SecureStorageSingleton()
              .storage
              .write(key: AppKey.keyIsLoggedIn, value: true.toString());

          // Store user object in secure storage
          final userDataJson = jsonEncode(userData);
          if (kDebugMode) {
            print("userDataJson  $userDataJson");
          }
          await SecureStorageSingleton()
              .storage
              .write(key: AppKey.keyUserObject, value: userDataJson);

          if (kDebugMode) {
            print("Token  ${userData.token.toString()}");
          }
          return Tuple2(true, appResponse.message);
        } else {
          return Tuple2(false, appResponse.message);
        }
      } catch (ex) {
        return Tuple2(false, "$ex");
      }
    } else {
      return const Tuple2(false, "");
    }
  }

  @override
  void onInit() {
    super.onInit();
    if (kDebugMode) {
      print("Login VM Initialized");
    }
  }
}
