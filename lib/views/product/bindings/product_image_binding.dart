

import 'package:get/get.dart';

import '../../../Http/Controller/product/product_image_controller.dart';

class ProductImageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProductImageController());
  }
}