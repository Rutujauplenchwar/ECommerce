import 'package:ecommerce2/brand_title_veified_icon.dart';
import 'package:ecommerce2/circular_icon.dart';
import 'package:ecommerce2/colors.dart';
import 'package:ecommerce2/image_strings.dart';
import 'package:ecommerce2/product_price_text.dart';
import 'package:ecommerce2/rounded_container.dart';
import 'package:ecommerce2/rounded_image.dart';
import 'package:ecommerce2/shadows.dart';
import 'package:ecommerce2/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ecommerce2/product_title_text.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [TShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(Tsizes.productImageRadius),
          color: TColors.textWhite,
        ),
        child: Column(children: [
          //thumbnail ,wishlist , discount tag
      
          TRoundedContainer(
            height: 180,
            padding: EdgeInsets.all(Tsizes.md),
            backgroundColor: TColors.light,
            child: Stack(
              children: [
                //thumbnail image
                TRoundedImage(imageurl: Timages.logo, applyImageRadius: true),
                Positioned(
                  top: 12,
                  child: TRoundedContainer(
                      radius: Tsizes.sm,
                      backgroundColor: TColors.secondaryColor.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                          horizontal: Tsizes.sm, vertical: Tsizes.xs),
                      child: Text(
                        '20%',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: TColors.black),
                      )),
                ),
      
                //favourate icon button
                const Positioned(
                  top: 0,
                  right: 0,
                  child: TCircularIcon(icon: Iconsax.heart5, color: Colors.red),
                ),
      
                //product details
              ],
            ),
          ),
      
          const SizedBox(
            height: Tsizes.spaceBtwItems / 2,
          ),
      
        const  Padding(
            padding: const EdgeInsets.only(left: Tsizes.sm),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TProductTitleText(title: 'Green nike air shoes', smallSize: true),
                SizedBox(
                  height: Tsizes.spaceBtwItems / 2,
                ),
                TBrandTitleWithVerifiedIcon(title:'Nike'),
                
                
      
      
              ],
            ),
          ),

          Spacer(),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //price 
                    Padding(
                      padding : EdgeInsets.only(left : Tsizes.sm),
                      child: TProductPriceText(price : '1500'),
                    ),
                    //add to cart button
                    Container(
                          decoration: BoxDecoration(
                            color :TColors.dark,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(Tsizes.cardRadiusMd) ,
                              bottomRight: Radius.circular(Tsizes.productImageRadius),
                           )
                          ),
                        child: SizedBox(
                          width: Tsizes.iconLg*1.2,
                          height : Tsizes.iconLg * 1.2,
                          child: Center(child: Icon(Iconsax.add,color : TColors.textWhite),)
                        ),

                    )

                  ],
                )
        ]),
      ),
    );
  }
}

