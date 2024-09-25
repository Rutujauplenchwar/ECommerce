import 'package:ecommerce2/colors.dart';
import 'package:ecommerce2/image_strings.dart';
import 'package:ecommerce2/sizes.dart';
import 'package:flutter/material.dart';
class TCircularImage extends StatelessWidget {
  const TCircularImage({
    super.key,  this.width = 56,  this.height = 56,  this.padding = Tsizes.sm,  this.isNetworkImage  = false, required this.image, this.fit = BoxFit.cover, this.overlayColor, this.backgroundColor,
  });


  final double width;
  final double height;
  final double padding;
  final bool isNetworkImage;
  final String image;
  final BoxFit? fit;
  final Color? overlayColor;
  final Color?backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
    width: width,
    height :height,
    padding :  EdgeInsets.all(padding),
    decoration : BoxDecoration(
      color : TColors.textWhite,
      borderRadius: BorderRadius.circular(100),
    
    ),
    child: Image(
      image: isNetworkImage? NetworkImage(image): AssetImage(image) as ImageProvider,
      color: overlayColor,
       
    ),
    );
  }
}
