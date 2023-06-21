import 'package:flutter/material.dart';
import 'app_color.dart';
import 'app_fonts.dart';

class AppTheme {


  late ThemeData lightTheme = ThemeData(
    colorScheme: const ColorScheme(
        primary: AppColor.lightPrimaryColor,
        secondary: AppColor.lightSecondary,
        surface: AppColor.lightSecondary,
        background: AppColor.lightBackgroundColor,
        onBackground: AppColor.black,
        error: AppColor.red,
        onError: AppColor.black,
        onPrimary: AppColor.black,
        onSecondary: AppColor.black,
        onSurface: AppColor.black,
        brightness: Brightness.light
    ),
    appBarTheme: const AppBarTheme(
      titleTextStyle: TextStyle(
        fontFamily: AppFonts.silone,
        color: AppColor.black,
        fontSize: 16,
        fontWeight: FontWeight.w600
      ),
      elevation: 0,
      iconTheme: IconThemeData(color: AppColor.white),
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontSize: 30,
        fontFamily: AppFonts.siloneBold,
        height: 1.3,
        fontWeight: FontWeight.bold
      ),
      titleMedium: TextStyle(
        fontSize: 23,
        fontWeight: FontWeight.bold,
        fontFamily: AppFonts.siloneBold,
      ),
      titleSmall: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 16,
          fontFamily: AppFonts.silone
      ),
      displayLarge: TextStyle(
          fontSize: 30,
          fontFamily: AppFonts.siloneBold,
          height: 1.3,
          fontWeight: FontWeight.bold
      ),
      displayMedium: TextStyle(
        color: AppColor.black,
        fontFamily: AppFonts.silone,
        fontSize: 16,
        height: 1.3,
        fontWeight: FontWeight.bold
      ),
      displaySmall: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 16,
          fontFamily: AppFonts.silone
      ),
      bodyMedium: TextStyle(
          color: AppColor.black,
          fontFamily: AppFonts.silone,
        fontSize: 16,
        height: 1.3,
      ),

      bodySmall: TextStyle(
          color: AppColor.grey,
          fontFamily: AppFonts.silone,
          fontSize: 13
      ),
    ),
    dividerColor: Colors.grey.shade300,
  );


  late ThemeData darkTheme = ThemeData(
    colorScheme:  const ColorScheme(
      primary: AppColor.darkPrimaryColor,
      secondary: AppColor.darkSecondaryColor,
      surface: AppColor.lightSecondary,
      background: AppColor.darkBackgroundColor,
      onBackground: AppColor.white,
      error: AppColor.red,
      onError: AppColor.white,
      onPrimary: AppColor.white,
      onSecondary: AppColor.white,
      onSurface: AppColor.white,
      brightness: Brightness.dark,
    )
  );



}