import 'package:flutter/foundation.dart';
import 'package:flutter_application_1/base_structure/base/base_view_model_getx.dart';
import 'package:flutter_application_1/base_structure/constants/app_strings.dart';
import 'package:get/get.dart';
import '../model/notification.dart';

class NotificationsViewModel extends BaseViewModel {
  final RxList<Notification> notificationList = RxList<Notification>([]);

  @override
  void onInit() {
    super.onInit();
    if (kDebugMode) {
      print("Notifications VM Initialized");
      notificationList.addAll([
        Notification(
          title: AppStrings.lblNotification.tr,
          discription: "First is the description of the notification.",
        ),
        Notification(
          title: AppStrings.lblNotification.tr,
          discription: "Second is the description of the notification.",
        ),
        Notification(
          title: AppStrings.lblNotification.tr,
          discription: "Third is the description of the notification.",
        ),
        Notification(
          title: AppStrings.lblNotification.tr,
          discription: "Fourth is the description of the notification.",
        ),
        Notification(
          title: AppStrings.lblNotification.tr,
          discription: "Fifth is the description of the notification.",
        ),
      ]);
    }
  }

  // Method to delete a notification by index
  void deleteNotification(int index) {
    notificationList.removeAt(index); // Removes the item from the list
    if (kDebugMode) {
      print("Notifications VM Delete item $index");
    }
  }
}
