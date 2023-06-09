

import 'package:get/get.dart';
import 'package:marketplace_app/Http/Controller/product/color_controller.dart';

class ColorBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ColorController());
  }
}