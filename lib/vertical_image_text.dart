import 'package:ecommerce2/colors.dart';
import 'package:flutter/material.dart';

import 'package:ecommerce2/sizes.dart';
class VerticalImageText extends StatelessWidget {
  const VerticalImageText({
    super.key, required this.image, required this.title,  this.textColor = TColors.textWhite , this.backgroundColor = TColors.textWhite, this.onTap,
  });

  final String image,title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: Tsizes.spaceBtwItems),
        child: Column(
          children: [
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(Tsizes.sm),
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(100),
              ),
              child:  Center(
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              width: Tsizes.spaceBtwItems / 2,
            ),
            SizedBox(
              width: 55,
              child: Text(title, style: Theme.of(context).textTheme.labelMedium!.apply(color:textColor ),
              maxLines: 1
              ,overflow: TextOverflow.ellipsis,
              ),
              ),
          ],
        ),
      ),
    );
  }
}
