import 'package:ecommerce2/product_card_vertical.dart';
import 'package:ecommerce2/sizes.dart';
import 'package:flutter/material.dart';
class TGridLayout extends StatelessWidget {
  const TGridLayout({
    super.key, required this.itemCount, this.mainAxisExtent = 288, required this.itemBuilder,
  });

  final int itemCount;
  final double? mainAxisExtent;
  final Widget? Function(BuildContext , int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: itemCount,
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
    
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
      mainAxisSpacing: Tsizes.gridViewSpacing,
      crossAxisSpacing: Tsizes.gridViewSpacing,
      mainAxisExtent: mainAxisExtent,
      )
     ,
     itemBuilder: itemBuilder);
  }
}
