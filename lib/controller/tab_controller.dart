import 'package:get/get.dart';
import 'package:flutter/material.dart';

class MyTabController extends GetxController with SingleGetTickerProviderMixin {
  final List<Tab> myTabs = <Tab>[
    Tab(text: '신청하기'),
    Tab(text: '등록하기'),
    Tab(text: 'My Page')
  ];
  late TabController controller;
  @override
  void onInit() {
    super.onInit();
    controller = TabController(vsync: this, length: myTabs.length);
  }

  @override
  void onClose() {
    controller.dispose();
    super.onClose();
  }
}
