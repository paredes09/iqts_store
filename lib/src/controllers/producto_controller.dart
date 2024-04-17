import 'package:carousel_slider/carousel_options.dart';
import 'package:get/get.dart';

class ProductoController extends GetxController {
  var currentIndex = 0.obs;
  var totalPages = 1.obs;
  void onCarouselPageChanged(int index, CarouselPageChangedReason reason) {
    currentIndex.value = index;
    totalPages.value = index + 1;
  }
}
