import 'package:ecommerce2/colors.dart';
import 'package:ecommerce2/sizes.dart';
import 'package:flutter/material.dart';

class TRoundedContainer extends StatelessWidget {
  const TRoundedContainer({super.key, this.width, this.height,  this.radius  = Tsizes.cardRadiusLg, this.padding, this.margin, this.child,  this.backgroundColor = TColors.textWhite,  this.showBorder = false,  this.borderColor = TColors.borderPrimary});

  final double? width;
  final double? height;
  final double radius;
   final  EdgeInsets?padding;
  final EdgeInsets? margin;
  final Widget? child;
  final Color backgroundColor;
  final bool showBorder ;
final Color borderColor;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
        margin : margin,
        padding:  padding,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius),
            color: backgroundColor,
            border: showBorder? Border.all(color: borderColor):null,
            ),
            child: child,
            );
    
  }
}