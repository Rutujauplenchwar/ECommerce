import 'package:ecommerce2/appBar.dart';
import 'package:ecommerce2/circular_icon.dart';
import 'package:ecommerce2/grid_layout.dart';
import 'package:ecommerce2/home.dart';
import 'package:ecommerce2/home.dart';
import 'package:ecommerce2/product_card_vertical.dart';
import 'package:ecommerce2/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar : TAppBar(
        title: Text('Wishlist' , style :Theme.of(context).textTheme.headlineMedium),
        actions: [
          TCircularIcon(icon : Iconsax.add , onPressed : () => Get.to(const Home()))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding : EdgeInsets.all(Tsizes.defaultSpaces),
          child : Column(
            children: [
              TGridLayout(itemCount : 4 , itemBuilder: (_,index)=> TProductCardVertical(),)
            ],
          )
        )
      ),
    );
  }
}