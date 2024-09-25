import 'package:ecommerce2/colors.dart';
import 'package:ecommerce2/device_utilities.dart';
import 'package:ecommerce2/image_strings.dart';
import 'package:ecommerce2/onboarding_controller.dart';
import 'package:ecommerce2/sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final controller = Get.put(OnboardingController());

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller:controller.pageController,
            onPageChanged:controller.updatePageIndicator,
            children: const [
              OnboardingPage(
                image: Timages.logo,
                title: 'Welcome to the mart1',
                subTitle: 'This is my first ecommerse app',
              ),
              OnboardingPage(
                image: Timages.logo,
                title: 'Welcome to the mart2',
                subTitle: 'This is my first ecommerse app',
              ),
              OnboardingPage(
                image: Timages.logo,
                title: 'Welcome to the mart3',
                subTitle: 'This is my first ecommerse app',
              ),
            ],
          ),
          //skip button
          Positioned(
              top: kToolbarHeight - 40.0,
              right: Tsizes.defaultSpaces,
              child: TextButton(
                onPressed: () {
                  controller.skipPage();
                },
                child: const Text('Skip'),
              )),
          //dot navigator
          Positioned(
            bottom: TDeviceUtilities.getBottomNavigationBarHeight(),
            left: Tsizes.defaultSpaces,
            child: SmoothPageIndicator(
                effect: const ExpandingDotsEffect(
                    activeDotColor: TColors.dark, dotHeight: 6),
                controller: controller.pageController,
                onDotClicked: controller.dotNavigationClick,
                count: 3),
          ),
          //circular button
          Positioned(
            right: Tsizes.defaultSpaces,
            bottom: TDeviceUtilities.getBottomNavigationBarHeight(),
            child: ElevatedButton(onPressed: (){
              controller.nextPage();
            },
            style: ElevatedButton.styleFrom(shape: CircleBorder(),
            minimumSize: const Size(40,40),
            backgroundColor: Color.fromARGB(255, 22, 16, 56)),
            child: const Icon(Iconsax.arrow_right_3 ),
            ),),
        ],
      ),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });

  final String image, title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Tsizes.defaultSize),
      child: Column(
        children: [
          Image(
            width: MediaQuery.of(Get.context!).size.width * 0.8,
            height: MediaQuery.of(Get.context!).size.height * 0.6,
            image: AssetImage(image),
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: Tsizes.spaceBtwItems,
          ),
          Text(
            subTitle,
            style: Theme.of(context).textTheme.bodyLarge,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
