
import 'package:ecommerce2/sizes.dart';
import 'package:ecommerce2/spacing_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Sucessmessage extends StatelessWidget {
  const Sucessmessage({super.key , required this.image , required this.title , required this.subtitile , required this.onPressed});

  final String image ,title,subtitile;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Padding(
        padding: TspacingStyle.paddingwithAppBarWeight * 2,
        child:  Column(
          children: [
            //image
              Image(
                image: AssetImage(image),
                width: MediaQuery.of(Get.context!).size.width * 0.6,
              ),

              const SizedBox(
                height: Tsizes.spaceBtwItems,
              ),
              //text
              Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),

              const SizedBox(
                height: Tsizes.spaceBtwItems,
              ),
              
              
              //text
              Text(
                subtitile,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: Tsizes.spaceBtwItems,
              ),


               //button
              SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: onPressed,
                        child: const Text('Continue'),
                      ),
                    ),
          ],
        )
        
        ),
      ),
    );
  }
}