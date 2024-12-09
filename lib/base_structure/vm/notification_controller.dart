import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class NotificationController extends GetxController{
  
  Rx<RemoteMessage?> notificationData = Rx(null);

  @override
  void onInit() {
    super.onInit();
    if (kDebugMode) {
      print("NotificationController");
    }
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      notificationData.value = message;
      update(); // Update the UI
    });
  }
}