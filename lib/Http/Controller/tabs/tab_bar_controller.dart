

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TabBarController extends GetxController with GetSingleTickerProviderStateMixin {

  late TabController tabController;

  final List<Widget> tabs = [
    const Tab(
      child: Text(
        'Dressing',
      ),
    ),
    const Tab(
      child: Text(
        'Avis',
      ),
    ),
    const Tab(
      child: Text(
        'Forum',
      ),
    )
  ];

  @override
  void onInit() {
    tabController = TabController(length: tabs.length, vsync: this);
    super.onInit();
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }
}