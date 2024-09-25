import 'package:ecommerce2/image_strings.dart';

import 'package:ecommerce2/sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(Tsizes.defaultSpaces),
          child: Column(
            children: [
              //image
              Image(
                image: AssetImage(Timages.logo),
                width: MediaQuery.of(Get.context!).size.width * 0.6,
              ),

              const SizedBox(
                height: Tsizes.spaceBtwItems,
              ),
              //text
              Text(
                'Password Reset email sent',
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),

              const SizedBox(
                height: Tsizes.spaceBtwItems,
              ),

              //text
              Text(
                'Reset Password!!!!!!!!!!',
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: Tsizes.spaceBtwItems,
              ),

              //button
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(onPressed: () {}, child: Text('Done'))),

              const SizedBox(
                height: Tsizes.spaceBtwItems,
              ),

              //button
              SizedBox(
                  width: double.infinity,
                  child: TextButton(
                      onPressed: () {}, child: Text('Resend email'))),
            ],
          ),
        ),
      ),
    );
  }
}
