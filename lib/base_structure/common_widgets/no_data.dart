import 'package:flutter/widgets.dart';

import '../constants/app_text_constant.dart';

class NoData extends StatelessWidget {
  final String title;
  const NoData({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: const TextStyle(
                  fontSize: 16, fontFamily: AppTextConstant.poppinsBold),
            ),
          ],
        ),
      ),
    );
  }
}
