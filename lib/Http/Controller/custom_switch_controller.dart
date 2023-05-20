

import 'package:get/get.dart';

class CustomSwitchController extends GetxController {
  bool value = false;

  void toggle () {
    value = !value;
    update();
  }
}