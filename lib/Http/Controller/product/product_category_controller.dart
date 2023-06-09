

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class ProductCategoryController extends GetxController {
  RxList<Category> colorList = List<Category>.empty(growable: true).obs ;
  RxList<Category> colorListSelected = List<Category>.empty(growable: true).obs ;
  RxBool colorLoading = false.obs ;



}