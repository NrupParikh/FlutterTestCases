import 'package:flutter/material.dart';

class ColorConstant {
  static Color green500 = fromHex('#3ab54a');
  static Color blackB2000000 = fromHex('#B2000000');
  static Color black161616 = fromHex('#161616');
  static Color whiteLightA70019 = fromHex('#EAE7E7');
  static Color green501 = fromHex('#45c355');
  static Color whiteFFFFFF = fromHex('#FFFFFF');
  static Color selectedTileColor = fromHex("#eeeeee");

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
