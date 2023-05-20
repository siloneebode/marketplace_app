import 'package:get/get.dart';
import 'package:marketplace_app/controller/dashboard_controller.dart';

class DashboardBinding extends Bindings {

  @override
  void dependencies() {
    Get.put(DashboardController());
  }

}