


import 'package:ecommerce2/brand_showcase.dart';
import 'package:ecommerce2/grid_layout.dart';
import 'package:ecommerce2/heading_section.dart';
import 'package:ecommerce2/image_strings.dart';
import 'package:ecommerce2/product_card_vertical.dart';
import 'package:ecommerce2/sizes.dart';
import 'package:flutter/material.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children:[ Padding(
                    padding: EdgeInsets.all(Tsizes.defaultSpaces),
                    child: Column(
                      children: [
                        //brands 
                        TBrandShowcase(images: [Timages.logo , Timages.logo ,Timages.logo],),
                        const SizedBox(height : Tsizes.spaceBtwItems),

                        //products
                        TSectionHeading(headingText : 'You might like ' , onPressed:(){}),
                        const SizedBox(height : Tsizes.spaceBtwItems),

                        TGridLayout(itemCount : 4 , itemBuilder : (_,index) => TProductCardVertical()),
                        const SizedBox(height : Tsizes.spaceBtwItems),

                      ],
                    ),
                  ),]
    );
  }
}