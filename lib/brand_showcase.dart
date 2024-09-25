import 'package:ecommerce2/brand_card.dart';
import 'package:ecommerce2/colors.dart';
import 'package:ecommerce2/image_strings.dart';
import 'package:ecommerce2/rounded_container.dart';
import 'package:ecommerce2/sizes.dart';
import 'package:flutter/material.dart';

class TBrandShowcase extends StatelessWidget {
  const TBrandShowcase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return TRoundedContainer(
      showBorder: true,
      borderColor: TColors.dark,
      backgroundColor: Colors.transparent,
      padding: EdgeInsets.all(Tsizes.md),
      margin: EdgeInsets.only(bottom: Tsizes.spaceBtwItems),
      child: Column(
        children: [
          // brand
          TBrandCard(showBorder: false),
          const SizedBox(height : Tsizes.spaceBtwItems),
          Row(
            children: images
                .map((image) => brandTopProductImageWidget(image, context))
                .toList(),
          )
        ],
      ),
    );
  }
}

Widget brandTopProductImageWidget(String image, context) {
  return Expanded(
    child: TRoundedContainer(
        height: 100,
        backgroundColor: TColors.light,
        margin: EdgeInsets.only(right: Tsizes.sm),
        padding: EdgeInsets.all(Tsizes.md),
        child: Image(fit: BoxFit.contain, image: AssetImage(image))),
  );
}
