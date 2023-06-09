import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';


class ProductPriceController extends GetxController {

  TextEditingController priceController = TextEditingController();
  var price = 0.0.obs ;

  @override
  void onInit() {
    super.onInit();
  }

  void updateValue(double value) {
    price.value = value;
    update();
  }




}