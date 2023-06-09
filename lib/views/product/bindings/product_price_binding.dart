

import 'package:get/get.dart';

import '../../../Http/Controller/product/product_price_controller.dart';

class ProductPriceBinding extends Bindings {

  @override
  void dependencies() {
    Get.lazyPut(() => ProductPriceController());}
}