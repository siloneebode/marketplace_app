import 'package:get/get.dart';
import 'package:marketplace_app/routes/app_route.dart';
import 'package:marketplace_app/views/dahsboard/dashboard_screen.dart';

import '../views/dahsboard/dashboard_binding.dart';

class AppPage {
  static var list = [
    GetPage(
        name: AppRoute.dashboard,
        page: () => const DashboardScreen(),
        binding: DashboardBinding()
    )
  ];
}