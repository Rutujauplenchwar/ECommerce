import 'package:ecommerce2/reset_password.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'sizes.dart';

class Forgotpassword extends StatelessWidget {
  const Forgotpassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Padding(
            padding: const EdgeInsets.all(Tsizes.defaultSpaces),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              //Heading
              Text(
                'Forgot Password',
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),

              const SizedBox(
                height: Tsizes.spaceBtwItems,
              ),

              //text
              Text(
                'Forgot password reset new password',
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: Tsizes.spaceBtwItems * 2,
              ),

              //textfield
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Enter Text ',
                  prefixIcon: Icon(Iconsax.direct_right),
                ),
              ),
              const SizedBox(
                height: Tsizes.spaceBtwItems,
              ),

              //button submit
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () => Get.off(() => const ResetPassword()),
                      child: Text('Submit'))),
            ])));
  }
}
