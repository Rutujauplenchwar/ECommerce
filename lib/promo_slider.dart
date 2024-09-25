import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'home_controller.dart';
import 'rounded_image.dart';
import 'circular_container.dart';
import 'sizes.dart';
import 'colors.dart';

class TPromoSlider extends StatelessWidget {
  const TPromoSlider({super.key, required this.banners});

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController();

    return Column(
      children: [
        SizedBox(
          height: 200,
          child: PageView.builder(
            controller: pageController,
            onPageChanged: (index) => HomeController.instance.updateCarouselIndex(index),
            itemCount: banners.length,
            itemBuilder: (context, index) {
              return TRoundedImage(imageurl: banners[index]);
            },
          ),
        ),
        const SizedBox(height: Tsizes.spaceBtwItems),
        Obx(
          () => SmoothPageIndicator(
            controller: pageController,
            count: banners.length,
            effect: ExpandingDotsEffect(
              dotWidth: 12.0,
              dotHeight: 12.0,
              spacing: 16.0,
              activeDotColor: TColors.primaryColor,
              dotColor: Colors.grey,
            ),
          ),
        ),
      ],
    );
  }
}
