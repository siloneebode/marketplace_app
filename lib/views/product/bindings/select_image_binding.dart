

import 'package:get/get.dart';

import '../../../Http/Controller/product/select_image_controller.dart';

class SelectImageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SelectImageController());
  }
}