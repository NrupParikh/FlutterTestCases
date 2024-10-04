import 'package:flutter/material.dart';
import 'package:flutter_application_1/base_structure/base/base_screen.dart';

import '../constants/app_text_constant.dart';
import '../vm/rnd_view_model.dart';

class RNDScreen extends BaseScreen<RNDViewModel> {
  RNDScreen({super.key});

  @override
  Widget buildScreen(BuildContext context) {
    return Form(
      child: Column(
        children: [
          CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              title: const Text("Approve"),
              value: false,
              onChanged: (value) {}),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter Comment",
                hintStyle:
                    TextStyle(fontFamily: AppTextConstant.poppinsRegular),
                label: Text("Comment",
                    style: TextStyle(
                        fontSize: 12,
                        fontFamily: AppTextConstant.poppinsRegular)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                OutlinedButton(
                    child: const Text("Approve",
                        style: TextStyle(
                            fontSize: 12,
                            fontFamily: AppTextConstant.poppinsBold)),
                    onPressed: () {}),
                OutlinedButton(
                    child: const Text("Reject",
                        style: TextStyle(
                            fontSize: 12,
                            fontFamily: AppTextConstant.poppinsBold)),
                    onPressed: () {}),
              ],
            ),
          )
        ],
      ),
    );
  }
}
