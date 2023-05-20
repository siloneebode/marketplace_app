

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TabBarController extends GetxController with GetSingleTickerProviderStateMixin {

  late TabController controller ;

  void updateTab() {
    controller = TabController(vsync: this, length: 3);
    update();
  }
}