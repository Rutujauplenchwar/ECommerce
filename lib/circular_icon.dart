import 'package:ecommerce2/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TCircularIcon extends StatelessWidget {
  const TCircularIcon({
    super.key, this.width, this.height, this.size, required this.icon, this.color, this.backgroundColor, this.onPressed,
  });

  final double? width,height,size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height : height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color:  TColors.textWhite.withOpacity(0.9),
      ),
      child : IconButton(onPressed: (){}, icon: Icon(icon , color: color, size : size)),
    );
  }
}