import 'package:flutter/material.dart';
import 'package:flutter_application_1/base_structure/base/base_screen.dart';
import 'package:flutter_application_1/base_structure/constants/app_text_constant.dart';
import 'package:flutter_application_1/base_structure/vm/notifications_view_model.dart';

class NotificationsScreen extends BaseScreen<NotificationsViewModel> {
  const NotificationsScreen({super.key});

  @override
  Widget buildScreen(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.separated(
        itemCount: 10, // Define the number of items here
        itemBuilder: (context, index) {
          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5), // Rounded corners
            ),
            elevation: 5, // Optional: add elevation to the card
            margin: const EdgeInsets.symmetric(vertical: 5),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Notification ${index + 1}",
                    style: const TextStyle(
                      fontSize: 16,
                      fontFamily: AppTextConstant.poppinsMedium,
                    ),
                  ),
                  const SizedBox(height: 10), // Spacing between text
                  const Text(
                    "This is the description of the notification.",
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(height: 10); // Separator between items
        },
      ),
    );
  }
}
