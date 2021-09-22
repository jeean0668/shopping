import 'package:get/get.dart';
import 'package:flutter/material.dart';

class MyTabController extends GetxController with SingleGetTickerProviderMixin {
  
  var tabIndex = 0.obs;
  void changeTabIndex(int index) {
    tabIndex.value = index;
  }
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
