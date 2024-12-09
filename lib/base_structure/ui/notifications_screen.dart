import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/base_structure/base/base_screen.dart';
import 'package:flutter_application_1/base_structure/common_widgets/custom_dialog.dart';
import 'package:flutter_application_1/base_structure/common_widgets/no_data.dart';
import 'package:flutter_application_1/base_structure/constants/app_text_constant.dart';
import 'package:flutter_application_1/base_structure/vm/notifications_view_model.dart';
import 'package:get/get.dart';
import '../constants/app_strings.dart';

class NotificationsScreen extends BaseScreen<NotificationsViewModel> {
  const NotificationsScreen({super.key});

  @override
  Widget buildScreen(BuildContext context) {
    // Observe changes in the notification list
    return Obx(() => (vm.notificationList.isNotEmpty)
        ? Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.separated(
        itemCount: vm.notificationList.length,
        itemBuilder: (context, index) {
          final notification = vm.notificationList[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 5),
            child: ListTile(
              contentPadding: const EdgeInsets.all(16.0),
              leading: const Icon(
                Icons.notifications,
                color: Colors.white,
                size: 24,
              ),
              title: Text(
                '${notification.title.toString()} ${index + 1}',
                style: const TextStyle(
                  fontSize: 14,
                  fontFamily: AppTextConstant.poppinsMedium,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: Text(
                  notification.discription.toString(),
                  style: const TextStyle(
                    fontSize: 12,
                  ),
                ),
              ),
              trailing: IconButton(
                icon: const Icon(
                  Icons.delete,
                  color: Colors.white,
                  size: 24,
                ),
                onPressed: () async {
                  // Call the delete function from ViewModel
                  // vm.deleteNotification(index);
                  var result = await CustomDialog.showOkCancelDialog(
                    AppStrings.appName.tr,
                    AppStrings.msgDeleteNotificationConfirmation.tr,
                  );

                  // Handle the result of the dialog (e.g., OK or Cancel)
                  // ignore: unrelated_type_equality_checks
                  if (result == true) {
                    if (kDebugMode) {
                      print('User Succuess the action');
                    }
                    // User pressed OK
                    vm.deleteNotification(index);
                    // You can perform additional actions here, such as logging out
                  } else {
                    // User pressed Cancel
                    if (kDebugMode) {
                      print('User cancelled the action');
                    }
                  }
                },
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(height: 10);
        },
      ),
    )
        : NoData(title: AppStrings.noNotificationFound.tr));
  }
}