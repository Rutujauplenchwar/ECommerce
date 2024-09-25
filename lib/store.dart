import 'package:ecommerce2/appBar.dart';
import 'package:ecommerce2/brand_card.dart';
import 'package:ecommerce2/brand_showcase.dart';

import 'package:ecommerce2/cart_menu_icon.dart';
import 'package:ecommerce2/category_tab.dart';

import 'package:ecommerce2/colors.dart';

import 'package:ecommerce2/grid_layout.dart';
import 'package:ecommerce2/heading_section.dart';
import 'package:ecommerce2/image_strings.dart';

import 'package:ecommerce2/search_bar.dart';
import 'package:ecommerce2/sizes.dart';
import 'package:ecommerce2/tabbar.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: TAppBar(
            title:
                Text('Store', style: Theme.of(context).textTheme.headlineMedium),
            actions: [
              TCartCounterWidget(
                onPressed: () {},
                iconColor: TColors.dark,
              ),
            ]),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: TColors.textWhite,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(Tsizes.defaultSpaces),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      const SizedBox(height: Tsizes.spaceBtwItems),
                      const TSearchContainer(
                          text: 'search in store',
                          showBorder: true,
                          showBackground: false,
                          padding: EdgeInsets.zero),
                      const SizedBox(height: Tsizes.spaceBtwSections),
                      TSectionHeading(
                          headingText: 'Featured Brands', onPressed: () {}),
                      const SizedBox(height: Tsizes.spaceBtwItems / 1.5),
                      TGridLayout(
                        itemCount: 4,
                        mainAxisExtent: 80,
                        itemBuilder: (_, index) {
                          return const TBrandCard(showBorder: false);
                        },
                      ),
                    ],
                  ),
                ),
                bottom: const TTabBar(tabs: [
                  Tab(child: Text('Sports')),
                  Tab(child: Text('Furniture')),
                  Tab(child: Text('Electronics')),
                  Tab(child: Text('Clothes')),
                  Tab(child: Text('Cosmetics')),
                ]),
              ),
            ];
          },
          body: const TabBarView(
            children: [
              
                
                 TCategoryTab(),
                 TCategoryTab(),
                 TCategoryTab(),
                 TCategoryTab(),
                 TCategoryTab(),
               
                
              
              
              // Other tabs' content should be added similarly
              Center(child: Text('Furniture content')),
              Center(child: Text('Electronics content')),
              Center(child: Text('Clothes content')),
              Center(child: Text('Cosmetics content')),
            ],
          ),
        ),
      ),
    );
  }
}

