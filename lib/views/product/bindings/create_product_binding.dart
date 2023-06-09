

import 'package:get/get.dart';

import '../../../Http/Controller/product/create_product_controller.dart';

class CreateProductBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CreateProductController());
  }
}