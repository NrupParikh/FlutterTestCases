import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_application_1/base_structure/constants/app_api_message.dart';
import 'package:flutter_application_1/base_structure/constants/app_api_url.dart';
import 'package:flutter_application_1/base_structure/model/app_response.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../constants/app_strings.dart';
import '../utils/progress_dialog_utils.dart';

class NetworkService {
  static const int requestTimeOut = 120 * 100;
  late Dio dio;

  NetworkService() {
    dio = (Dio(_baseOptions));
    if (kDebugMode) {
      dio.interceptors.add(PrettyDioLogger());
    }
  }

  // ===================== BaseOptions
  final BaseOptions _baseOptions = BaseOptions(
      baseUrl: ApiUrl.baseUrl,
      connectTimeout: const Duration(seconds: requestTimeOut),
      receiveTimeout: const Duration(seconds: requestTimeOut),
      responseType: ResponseType.json,
      followRedirects: true);

  // ===================== GET
  Future<AppResponse> get(
      {String? url,
      Map<String, dynamic>? parameters,
      Function(int, int)? onReceiveProgress,
      ResponseType? responseType,
      bool showProgressBar = false}) async {
    return await _safeFetch(
        showProgressBar,
        () async => dio.get(url!,
            queryParameters: parameters,
            onReceiveProgress: onReceiveProgress,
            options: Options(
              validateStatus: (_) => true,
              // headers: await headersRequest(),
              responseType: responseType,
            )));
  }

  // ===================== POST
  Future<AppResponse> post(
      {String? url,
      dynamic data,
      Function(int, int)? onReceiveProgress,
      Function(int, int)? onSendProgress,
      ResponseType? responseType,
      bool showProgressBar = false}) async {
    return await _safeFetch(
        showProgressBar,
        () async => dio.post(url!,
            data: data,
            onReceiveProgress: onReceiveProgress,
            onSendProgress: onSendProgress,
            options: Options(
              validateStatus: (_) => true,
              // headers: await headersRequest(),
              responseType: responseType,
            )));
  }

  // ===================== DELETE
  Future<AppResponse> delete(
      {String? url,
      dynamic data,
      Function(int, int)? onReceiveProgress,
      Function(int, int)? onSendProgress,
      ResponseType? responseType,
      bool showProgressBar = false}) async {
    return await _safeFetch(
      showProgressBar,
      () async => dio.delete(
        url!,
        data: data,
        options: Options(
          validateStatus: (_) => true,
          responseType: responseType,
          // headers: await headersRequest(),
        ),
      ),
    );
  }

  // ===================== SAFE FETCH
  Future<AppResponse> _safeFetch(
      bool showProgress, Future<Response> Function() tryFetch) async {
    try {
      if (showProgress) {
        ProgressDialogUtils.showProgressDialog();
      }
      final response = await tryFetch();
      return AppResponse.fromJson(response.data);
    } on SocketException catch (e) {
      if (kDebugMode) {
        print("SocketException \n${e.toString()}");
      }
      throw AppApiMessage.msgConnectInternet;
    } on FormatException catch (_) {
      throw AppStrings.msgNetworkErr;
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionTimeout) {
        if (kDebugMode) {
          print("error 211 ${e.type}");
          print("error 211 ${e.message}");
          print("error 211 ${e.error}");
        }
        throw AppApiMessage.msgConnectionTimeOut;
      } else if (e.type == DioExceptionType.cancel) {
        throw AppApiMessage.msgCanceled;
      }

      if (kDebugMode) {
        print("error ${e.toString()}");
        print("error 2 $e");
        print("CATCH error out side");
      }
      throw AppApiMessage.msgConnectInternet;
    } finally {
      ProgressDialogUtils.hideProgressDialog();
    }
  }

  // ===================== HANDLE EXCEPTION
  dynamic handleException(dynamic response) {
    if ((response as AppResponse).statusCode == 200) {
      if (kDebugMode) {
        print("statusCode == 200");
      }
      return response;
    } else {
      return response;
    }
  }
}
