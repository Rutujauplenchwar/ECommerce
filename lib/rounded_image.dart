//home screen mein sliding images after vertical image text section

import 'package:ecommerce2/colors.dart';
import 'package:ecommerce2/sizes.dart';
import 'package:flutter/material.dart';
class TRoundedImage extends StatelessWidget {
  const TRoundedImage({
    super.key, this.width = double.infinity, this.height = 150, required this.imageurl,  this.applyImageRadius = false, this.border,  this.backgroundColor = TColors.textWhite, this.fit = BoxFit.contain, this.padding,  this.isNetworkImage = false, this.onPressed,  this.borderRadius  = Tsizes.md,
  });

  final double? width , height;
  final String imageurl;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color backgroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onPressed;
  final double borderRadius;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        padding: padding,

        decoration: BoxDecoration(border: border,color: backgroundColor, borderRadius : BorderRadius.circular(borderRadius)),
        child : ClipRRect(borderRadius : applyImageRadius? BorderRadius.circular(borderRadius):BorderRadius.zero,child:  Image(image:isNetworkImage? NetworkImage(imageurl):AssetImage( imageurl) as ImageProvider,fit: fit,)),
      
      ),
    );
  }
}

