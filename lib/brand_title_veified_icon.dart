import 'package:ecommerce2/brand_text.dart';
import 'package:ecommerce2/colors.dart';
import 'package:ecommerce2/enums.dart';
import 'package:ecommerce2/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TBrandTitleWithVerifiedIcon extends StatelessWidget {
  const TBrandTitleWithVerifiedIcon({
    super.key, required this.title,  this.maxLines  = 1, this.textColor, this.iconColor =TColors.primaryColor, this.textAlign,  this.brandTextSize = TextSizes.small,
  });

  final String title;
  final int maxLines;
  final Color? textColor , iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;



  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(child: TBrandText(
          title : title,
          color : textColor,
          maxLines :maxLines,
          textAlign : textAlign,
          brandTextSize : brandTextSize,
        ),),
       
        const SizedBox(width: Tsizes.xs),
         Icon(Iconsax.verify5,
            color: iconColor, size: Tsizes.iconXs),
      ],
    );
  }
}

