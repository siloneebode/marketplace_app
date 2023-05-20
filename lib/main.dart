import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:marketplace_app/routes/app_page.dart';
import 'package:marketplace_app/routes/app_route.dart';
import 'package:marketplace_app/themes/app_themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: AppPage.list,
      initialRoute: AppRoute.dashboard,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      themeMode: ThemeMode.light,
    );
  }
}


