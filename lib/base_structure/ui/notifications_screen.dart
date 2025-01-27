import 'package:flutter/material.dart';
import 'package:flutter_application_1/base_structure/base/base_screen.dart';
import 'package:flutter_application_1/base_structure/constants/app_text_constant.dart';
import 'package:flutter_application_1/base_structure/vm/notifications_view_model.dart';
import 'package:get/get.dart';

import '../constants/app_strings.dart';

class NotificationsScreen extends BaseScreen<NotificationsViewModel> {
  const NotificationsScreen({super.key});

  @override
  Widget buildScreen(BuildContext context) {
    vm.updateAppBarTitle(AppStrings.notifications.tr);
    return const Center(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Notifications",
              style: TextStyle(
                  fontSize: 12, fontFamily: AppTextConstant.poppinsMedium),
            ),
          ],
        ),
      ),
    );
  }
}
