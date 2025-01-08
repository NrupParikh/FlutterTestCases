import 'package:flutter/material.dart';

class ColorConstant {
  static Color green500 = fromHex('#3ab54a');
  static Color blackB2000000 = fromHex('#B2000000');
  static Color black161616 = fromHex('#161616');
  static Color whiteLightA70019 = fromHex('#EAE7E7');
  static Color green501 = fromHex('#45c355');
  static Color whiteFFFFFF = fromHex('#FFFFFF');

  static Color bottomAppBarBgColor = fromHex("#040e24");
  static Color backgroundBlueColor = fromHex('#061a36');
  static Color blueColor = fromHex('#00A9E0');
  static Color orangeColor = fromHex('#E35C39');
  static Color yellowColor = fromHex('#F7A900');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

   // Sea Color
  static const MaterialColor sea = MaterialColor(
    0xFF00ADB5,
    {
      50: Color(0xFFE3FDFD),
      100: Color(0xFFCBF1F5),
      200: Color(0xFFA6E3E9),
      300: Color(0xFF71C9CE),
      400: Color(0xFF71C9CE),
      500: Color(0xFF00ADB5),
      600: Color(0xFF61C0BF),
      700: Color(0xFF3FC1C9),
      800: Color(0xFF0D7377),
      900: Color(0xFF40514E),
    },
  );

  // Gold Color
  static const MaterialColor gold = MaterialColor(
    0xFFE6B325,
    {
      50: Color(0xFFFEF5AC),
      100: Color(0xFFFFE9A0),
      200: Color(0xFFF0E161),
      300: Color(0xFFF0E161),
      400: Color(0xFFD9CB50),
      500: Color(0xFFD9CB50),
      600: Color(0xFFD9CB50),
      700: Color(0xFFC0B236),
      800: Color(0xFFBF9742),
      900: Color(0xFF61481C),
    },
  );
}
