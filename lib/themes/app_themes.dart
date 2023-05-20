
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';

class AppTheme {
  static Color lightBackgroundColor = const Color(0xfff2f2f2);
  static Color lightPrimaryColor = const Color(0xfff2f2f2);
  static Color lightSecondaryColor = const Color(0xfff2f2f2);
  static Color lightAccentColor = const Color(0xfff2f2f2);
  static Color lightParticlesColor = const Color(0xfff2f2f2);
  static Color lightTextColor = const Color(0xfff2f2f2);

  const AppTheme._();

  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: lightPrimaryColor,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    appBarTheme: AppBarTheme(backgroundColor: lightPrimaryColor),
    colorScheme: ColorScheme.light(secondary: lightSecondaryColor),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(disabledForegroundColor: lightBackgroundColor)
    )

  );

  static Brightness get currentSystemBrightness => SchedulerBinding.instance.window.platformBrightness;

  static setStatusBarAndNavigationBarColor(ThemeMode themeMode) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarIconBrightness: Brightness.light,
      systemNavigationBarColor: lightBackgroundColor,
      systemNavigationBarDividerColor: lightBackgroundColor
    ));
  }

}