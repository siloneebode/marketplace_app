

import 'package:get/get.dart';

class DashboardController extends GetxController {
  var tabindex = 0;

  void updateIndex(int index) {
    tabindex = index;
    update();
  }

}