import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:get/get.dart';

class NotificationController extends GetxController{
  
  Rx<RemoteMessage?> notificationData = Rx(null);

  @override
  void onInit() {
    super.onInit();
    print("NotificationController");
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      notificationData.value = message;
      update(); // Update the UI
    });
  }
}