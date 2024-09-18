import 'package:flutter/material.dart';
import 'package:flutter_application_1/base_structure/base/base_screen.dart';
import 'package:flutter_application_1/base_structure/constants/app_text_constant.dart';
import 'package:flutter_application_1/base_structure/vm/documents_view_model.dart';

class DocumentsScreen extends BaseScreen<DocumentsViewModel> {
  DocumentsScreen({super.key});

  @override
  Widget buildScreen(BuildContext context) {
    return const Center(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "My Documents",
              style: TextStyle(
                  fontSize: 12, fontFamily: AppTextConstant.poppinsMedium),
            ),
          ],
        ),
      ),
    );
  }
}
