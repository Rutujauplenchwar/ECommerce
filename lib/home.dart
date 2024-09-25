import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ecommerce2/colors.dart';
import 'package:ecommerce2/grid_layout.dart';
import 'package:ecommerce2/heading_section.dart';
import 'package:ecommerce2/home_appBar.dart';
import 'package:ecommerce2/image_strings.dart';
import 'package:ecommerce2/primary_header_container.dart';
import 'package:ecommerce2/product_card_vertical.dart';
import 'package:ecommerce2/promo_slider.dart';
import 'package:ecommerce2/search_bar.dart';
import 'package:ecommerce2/sizes.dart';
import 'package:ecommerce2/homeCategories.dart';
import 'home_controller.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(), // Ensure HomeController is initialized
      builder: (controller) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TPrimaryHeaderContainer(
                  child: Column(
                    children: [
                      THomeAppBar(),
                      SizedBox(
                        height: Tsizes.spaceBtwSections,
                      ),
                      TSearchContainer(text: 'search in store'),
                      SizedBox(
                        height: Tsizes.spaceBtwSections,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: Tsizes.defaultSpaces),
                        child: Column(
                          children: [
                            TSectionHeading(
                              headingText: 'Popular Categories',
                              showActionButton: false,
                              textColor: TColors.textWhite,
                            ),
                            SizedBox(
                              height: Tsizes.spaceBtwItems,
                            ),
                            THomeCategories()
                          ],
                        ),
                      ),
                      SizedBox(
                        height: Tsizes.spaceBtwSections,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(Tsizes.defaultSpaces),
                  child: Column(
                    children: [
                      // Promo sliders
                      TPromoSlider(
                        banners: controller.banners, // Pass banners from controller
                      ),
                      const SizedBox(
                        height: Tsizes.spaceBtwSections,
                      ),
                      // Popular products
                      TSectionHeading(
                          headingText: 'Popular Products', onPressed: () {}),
                      const SizedBox(
                        height: Tsizes.spaceBtwSections,
                      ),
                      TGridLayout(
                          itemCount: 4,
                          itemBuilder: (_, index) => const TProductCardVertical()),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
