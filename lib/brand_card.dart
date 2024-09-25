import 'package:ecommerce2/brand_title_veified_icon.dart';
import 'package:ecommerce2/circular_image.dart';
import 'package:ecommerce2/colors.dart';
import 'package:ecommerce2/enums.dart';
import 'package:ecommerce2/image_strings.dart';
import 'package:ecommerce2/rounded_container.dart';
import 'package:ecommerce2/sizes.dart';
import 'package:flutter/material.dart';

class TBrandCard extends StatelessWidget {
  const TBrandCard({super.key, required this.showBorder, this.onTap});

final bool showBorder;
final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
                              onTap:onTap,
                              child: TRoundedContainer(
                                  padding: const EdgeInsets.all(Tsizes.sm),
                                  showBorder: showBorder,
                                  backgroundColor: Colors.transparent,
                                  child: Row(children: [
                                    Flexible(
                                        child: TCircularImage(
                                      isNetworkImage: false,
                                      image: Timages.logo,
                                      backgroundColor: Colors.transparent,
                                      overlayColor: TColors.black,
                                    )),
                                    const SizedBox(
                                        width: Tsizes.spaceBtwItems / 2),
                                    //txt
                                    Expanded(
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            TBrandTitleWithVerifiedIcon(
                                              title: 'Nike',
                                              brandTextSize: TextSizes.large,
                                            ),
                                            Text(
                                              '256 products',
                                              overflow: TextOverflow.ellipsis,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .labelMedium,
                                            ),
                                          ],),
                                    ),
                                  ],),),
                            );
  }
}