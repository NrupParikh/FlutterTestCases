import 'package:flutter/material.dart';
import 'package:flutter_application_1/base_structure/base/base_screen.dart';
import 'package:flutter_application_1/base_structure/constants/app_colors.dart';
import 'package:flutter_application_1/base_structure/vm/six_pac_chat_view_model.dart';

class SixPacChatScreen extends BaseScreen<SixPacChatViewModel> {
  const SixPacChatScreen({super.key});

  @override
  Widget buildScreen(BuildContext context) {
    return Container(
      color: ColorConstant.backgroundBlueColor,
      child: const Center(
          child: Text(
        "Chat",
        style: TextStyle(fontSize: 32, color: Colors.green),
      )),
    );
  }
}
