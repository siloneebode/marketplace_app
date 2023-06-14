import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:marketplace_app/Insfrastructure/assets/app_theme.dart';
import 'package:marketplace_app/routes/app_page.dart';
import 'package:marketplace_app/routes/app_route.dart';
import 'Insfrastructure/local/app_languages.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  //await Hive.initFlutter();

  //Hive.registerAdapter(CustomColorAdapter());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: AppPage.pages,
      initialRoute: AppRoute.DASHBOARD,
      debugShowCheckedModeBanner: false,
      locale: const Locale('fr', 'FR'),
      fallbackLocale: const Locale('fr', 'FR'),
      translations: Languages(),
      theme: AppTheme().lightTheme,
    );
  }
}


