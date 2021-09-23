import 'package:carousel_slider/carousel_options.dart';
import 'package:get/get.dart';

class MyTabController extends GetxController with SingleGetTickerProviderMixin {
  var tabIndex = 0.obs;
  var imageIndex = 0.obs;
  void changeTabIndex(int index) {
    tabIndex.value = index;
  }

  void changeImageIndex(int index, CarouselPageChangedReason reason) {
    imageIndex.value = index;
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
