import 'package:flutter/foundation.dart';
import 'package:flutter_application_1/base_structure/api/network_service.dart';
import 'package:flutter_application_1/base_structure/constants/app_api_url.dart';
import 'package:flutter_application_1/base_structure/model/app_response.dart';

class ApiService {
  final NetworkService _networkService = NetworkService();

// ===================== FORGOT PASSWORD
  Future<AppResponse> forgotPassword(String email) async {
    Map<String, String> data = {
      'email': email,
    };

    try {
      final response = await _networkService.post(
          url: ApiUrl.forgotlink, data: data, showProgressBar: true);
      return _networkService.handleException(response);
    } catch (e) {
      if (kDebugMode) {
        print("forgotlink Exception$e");
      }
      rethrow;
    }
  }

// ===================== LOGIN
  Future<AppResponse> login(String email, String password) async {
    Map<String, String> data = {
      'email': email,
      'password': password,
    };
    try {
      final response = await _networkService.post(
          url: ApiUrl.login, data: data, showProgressBar: true);
      return _networkService.handleException(response);
    } catch (e) {
      if (kDebugMode) {
        print("login Exception$e");
      }
      rethrow;
    }
  }
}
