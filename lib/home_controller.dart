import 'package:get/get.dart';
import 'image_strings.dart';

class HomeController extends GetxController {
  static HomeController get instance => Get.find();

  final banners = <String>[
     Timages.logo,
     Timages.logo,
     Timages.logo,
  ].obs;

  var carouselCurrentIndex = 0.obs;

  void updateCarouselIndex(int index) {
    carouselCurrentIndex.value = index;
  }
}
