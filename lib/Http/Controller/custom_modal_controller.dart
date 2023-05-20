

import 'package:get/get.dart';

class CustomModalController extends GetxController {
  var isVisible = false.obs;

  void open() {
    isVisible.value = true;
    update();
  }

  void close() {
    isVisible.value = false;
    update();
  }
}