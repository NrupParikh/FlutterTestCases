import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';

import '../common_widgets/custom_dialog.dart';
import '../constants/app_strings.dart';

class NotificationService {

  void requestNotificationPermission() async {
    PermissionStatus status = await Permission.notification.request();
    if (status.isGranted) {
      if (kDebugMode) {
        print('User granted notification permission');
      }
    } else if (status.isDenied) {
      if (kDebugMode) {
        print('User denied notification permission');
      

      final result = await CustomDialog.showOkCancelDialog(
          AppStrings.appName.tr,
          "You have denied the notification permission.");
      if (result) {
        openAppSettings();
      }

      }
    } else if (status.isPermanentlyDenied) {
      if (kDebugMode) {
        print('User permanently denied notification permission');
      }
    } else if (status.isProvisional) {
      if (kDebugMode) {
        print('User granted provisional permission');
      }
    }
  }
}
