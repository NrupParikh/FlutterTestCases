import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/base_structure/constants/app_colors.dart';

import 'app_text_constant.dart';

class AppTheme {
// focus color : Used by widgets like TextField and TextFormField primary color
// ColorSchema : A set of 30 colors based on the Material Spec
// Primary : Most used color in the app
// onPrimary : Used to color the elements on top of the primary color : Text, Icon
// secondary : Less prominent elements : Chips, Toogle Buttons, background elements
// onSecondary : Used to color the elements on top of the secondary color
// error : Used for error message or alert : Red
// onError : This is text color on the error color : White
// background : Primary background color of whole app
// onBackground : Used to color the elements on top of the background color
// surface : Used as base color for elevated UI elements : Cards, Sheets, Dialogs
// onSurface : Used to color the elements on top of the surface color

// canvas color : Background color for the entire screen or app window
// scaffoldBackgroundColor : Background color of scaffold : App Bar, body area, bottom navigation bar
// highlight color : Define color when user taps and hold on a widget

  static String lightTheme = "light";
  static String darkTheme = "dark";

  static ThemeData myLightTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.lime.shade500),
    scaffoldBackgroundColor: Colors.lime.shade100,
    useMaterial3: true,
  );

  static ThemeData myDarkTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.green.shade500),
    scaffoldBackgroundColor: Colors.green.shade100,
    useMaterial3: true,
  );

// ======================================================================
  static ThemeData appPrimaryLightTheme() {
    final ThemeData base = ThemeData(colorScheme: lightColorScheme);
    return base.copyWith(
        // textTheme: _buildTextLightTheme(base.textTheme),
        // primaryTextTheme: _buildTextLightTheme(base.primaryTextTheme),
        drawerTheme: const DrawerThemeData(
          backgroundColor: Colors.white,
        ),
        cardTheme: const CardTheme(
            color: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16)),
                side: BorderSide(color: Colors.black)),
            shadowColor: Colors.greenAccent,
            margin: EdgeInsets.all(8.0)),
        outlinedButtonTheme: OutlinedButtonThemeData(
            style: OutlinedButton.styleFrom(
                textStyle: const TextStyle(
                    fontSize: 12, fontFamily: AppTextConstant.poppinsBold))),
        tabBarTheme: const TabBarTheme(
            labelColor: Colors.white,
            labelStyle: TextStyle(
                fontSize: 14, fontFamily: AppTextConstant.poppinsBold),
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: Color(0xFFFFFFFF),
            unselectedLabelColor: Color(0xFF66DF6E),
            unselectedLabelStyle: TextStyle(
                fontSize: 12, fontFamily: AppTextConstant.poppinsRegular),
            dividerColor: Colors.transparent),
        radioTheme: RadioThemeData(
          fillColor: MaterialStateProperty.all(const Color(0xFF006E1F)),
        ),
        datePickerTheme: const DatePickerThemeData(
            backgroundColor: Colors.white,
            dividerColor: Colors.greenAccent,
            headerBackgroundColor: Colors.green,
            headerForegroundColor: Colors.white),
        scaffoldBackgroundColor: Colors.white,
        dialogBackgroundColor: Colors.white,
        bottomSheetTheme:
            const BottomSheetThemeData(backgroundColor: Colors.white),
        appBarTheme: const AppBarTheme(
            systemOverlayStyle: SystemUiOverlayStyle.light,
            backgroundColor: Colors.green));
  }

  static ThemeData appPrimaryDarkTheme() {
    final ThemeData base = ThemeData(colorScheme: darkColorScheme);
    return base.copyWith(
        // textTheme: _buildTextDarkTheme(base.textTheme),
        // primaryTextTheme: _buildTextDarkTheme(base.primaryTextTheme),
        drawerTheme: const DrawerThemeData(
          backgroundColor: Color.fromARGB(255, 22, 22, 22),
        ),
        cardTheme: const CardTheme(
            elevation: 8,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16)),
                side: BorderSide(color: Colors.white)),
            color: Colors.black,
            shadowColor: Colors.greenAccent,
            margin: EdgeInsets.all(8.0)),
        outlinedButtonTheme: OutlinedButtonThemeData(
            style: OutlinedButton.styleFrom(
                textStyle: const TextStyle(
                    fontSize: 12, fontFamily: AppTextConstant.poppinsBold))),
        tabBarTheme:  const TabBarTheme(
            labelColor: Colors.green,
            labelStyle: TextStyle(
                fontSize: 12, fontFamily: AppTextConstant.poppinsBold),
            indicatorSize: TabBarIndicatorSize.label,
            indicatorColor: Colors.white,
            unselectedLabelColor: Colors.white,
            unselectedLabelStyle: TextStyle(
                fontSize: 10, fontFamily: AppTextConstant.poppinsRegular),
            dividerColor: Colors.white),
        radioTheme: RadioThemeData(
          fillColor: MaterialStateProperty.all(ColorConstant.backgroundBlueColor),
        ),
        datePickerTheme: const DatePickerThemeData(
            backgroundColor: Color(0xFF1A1C19),
            dividerColor: Colors.white,
            headerBackgroundColor: Colors.green,
            headerForegroundColor: Colors.white),
        scaffoldBackgroundColor: Colors.black,
        dialogBackgroundColor: Colors.black,
        bottomSheetTheme:
            const BottomSheetThemeData(backgroundColor: Colors.black),
        appBarTheme: AppBarTheme(
            systemOverlayStyle: SystemUiOverlayStyle.dark,
            backgroundColor: ColorConstant.backgroundBlueColor));
            
  }

  static const lightColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xFF006E1F),
    onPrimary: Color(0xFFFFFFFF),
    primaryContainer: Color(0xFF83FC87),
    onPrimaryContainer: Color(0xFF002205),
    secondary: Color(0xFF006874),
    onSecondary: Color(0xFFFFFFFF),
    secondaryContainer: Color(0xFF97F0FF),
    onSecondaryContainer: Color(0xFF001F24),
    tertiary: Color(0xFF38656B),
    onTertiary: Color(0xFF000000),
    tertiaryContainer: Color(0xFFBCEBF1),
    onTertiaryContainer: Color(0xFF001F23),
    error: Color(0xFFBA1A1A),
    errorContainer: Color(0xFFFFDAD6),
    onError: Color(0xFFFFFFFF),
    onErrorContainer: Color(0xFF410002),
    background: Color(0xFF000000),
    onBackground: Color(0xFF1A1C19),
    surface: Color(0xFF000000),
    onSurface: Color(0xFF1A1C19),
    surfaceVariant: Color(0xFFDEE5D8),
    onSurfaceVariant: Color(0xFF424940),
    outline: Color(0xFF72796F),
    onInverseSurface: Color(0xFFF0F1EB),
    inverseSurface: Color(0xFF2F312D),
    inversePrimary: Color(0xFF66DF6E),
    shadow: Color(0xFF000000),
    surfaceTint: Color(0xFF006E1F),
  );

  static const darkColorScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0xFF66DF6E),
    onPrimary: Color(0xFF00390C),
    primaryContainer: Color(0xFF005315),
    onPrimaryContainer: Color(0xFF83FC87),
    secondary: Color(0xFF83FC87),
    onSecondary: Color(0xFF00363D),
    secondaryContainer: Color(0xFF004F58),
    onSecondaryContainer: Color(0xFF83FC87),
    tertiary: Color(0xFF83FC87),
    onTertiary: Color(0xFF00363B),
    tertiaryContainer: Color(0xFF1F4D52),
    onTertiaryContainer: Color(0xFF83FC87),
    error: Color(0xFFFFB4AB),
    errorContainer: Color(0xFF93000A),
    onError: Color(0xFF690005),
    onErrorContainer: Color(0xFFFFDAD6),
    background: Color(0xFF1A1C19),
    onBackground: Color(0xFFE2E3DD),
    surface: Color(0xFF1A1C19),
    onSurface: Color(0xFFE2E3DD),
    surfaceVariant: Color(0xFF424940),
    onSurfaceVariant: Color(0xFFC2C9BD),
    outline: Color(0xFF8C9388),
    onInverseSurface: Color(0xFF1A1C19),
    inverseSurface: Color(0xFFE2E3DD),
    inversePrimary: Color(0xFF006E1F),
    shadow: Color(0xFF000000),
    surfaceTint: Color(0xFF66DF6E),
  );

  static TextTheme _buildTextLightTheme(TextTheme base) {
    return base.copyWith(
        displayLarge: base.displayLarge!.copyWith(
          fontSize: 80.0,
          color: Colors.black,
        ),
        displayMedium: base.displayMedium!.copyWith(
          fontSize: 40.0,
          color: Colors.black,
        ),
        displaySmall: base.displaySmall!.copyWith(
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        labelLarge: base.labelLarge!.copyWith(
          fontSize: 16.0,
          fontWeight: FontWeight.normal,
          color: Colors.black,
        ),
        labelMedium: base.labelMedium!.copyWith(
          fontSize: 24.0,
          fontWeight: FontWeight.normal,
          color: Colors.black,
        ),
        labelSmall: base.labelSmall!.copyWith(
          fontSize: 12.0,
          fontWeight: FontWeight.normal,
          color: Colors.black,
        ),
        bodyLarge: base.bodyLarge!.copyWith(
          fontSize: 16.0,
          color: Colors.black,
        ),
        bodyMedium: base.bodyMedium!.copyWith(
          fontSize: 14.0,
          color: Colors.grey,
        ),
        bodySmall: base.bodySmall!.copyWith(
          fontSize: 12.0,
          color: Colors.grey,
        ),
        headlineLarge: base.headlineLarge!.copyWith(
          fontSize: 24.0,
          color: Colors.black,
        ),
        headlineMedium: base.headlineMedium!.copyWith(
          fontSize: 20.0,
          color: Colors.black,
        ),
        headlineSmall: base.headlineSmall!.copyWith(
          fontSize: 16.0,
          color: Colors.grey,
        ),
        titleLarge: base.titleLarge!.copyWith(
          fontSize: 24.0,
          color: Colors.black,
        ),
        titleMedium: base.titleMedium!.copyWith(
          fontSize: 18.0,
          color: Colors.green,
        ),
        titleSmall: base.titleSmall!.copyWith(
          fontSize: 18.0,
          color: Colors.green,
        ));
  }

  static TextTheme _buildTextDarkTheme(TextTheme base) {
    return base.copyWith(
        displayLarge: base.displayLarge!.copyWith(
          fontSize: 80.0,
          color: Colors.black,
        ),
        displayMedium: base.displayMedium!.copyWith(
          fontSize: 40.0,
          color: Colors.black,
        ),
        displaySmall: base.displaySmall!.copyWith(
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        labelMedium: base.labelMedium!.copyWith(
          fontSize: 20.0,
          fontWeight: FontWeight.normal,
          color: Colors.black,
        ),
        bodyLarge: base.bodyLarge!.copyWith(
          fontSize: 16.0,
          color: Colors.black,
        ),
        bodyMedium: base.bodyMedium!.copyWith(
          fontSize: 14.0,
          color: Colors.grey,
        ),
        labelLarge: base.labelLarge!.copyWith(
          fontSize: 12.0,
          color: Colors.grey,
        ),
        headlineSmall: base.headlineSmall!.copyWith(
          fontSize: 16.0,
          color: Colors.grey,
        ),
        titleLarge: base.titleLarge!.copyWith(
          fontSize: 24.0,
          color: Colors.black,
        ),
        headlineMedium: base.headlineMedium!.copyWith(
          fontSize: 24.0,
          color: Colors.black,
        ),
        titleMedium: base.titleMedium!.copyWith(
          fontSize: 18.0,
          color: Colors.green,
        ));
  }
}
