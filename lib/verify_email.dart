
import 'package:ecommerce2/image_strings.dart';
import 'package:ecommerce2/login.dart';
import 'package:ecommerce2/sizes.dart';
import 'package:ecommerce2/sucessMessage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyEmail extends StatelessWidget {
  const VerifyEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => const LoginScreen()),
              icon: Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Tsizes.defaultSpaces),
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
                'verify your email adress!',
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),

              const SizedBox(
                height: Tsizes.spaceBtwItems,
              ),
              //text
              Text(
                'support@rutujauplenchwar.com',
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),

              const SizedBox(
                height: Tsizes.spaceBtwItems,
              ),
              //text
              Text(
                'Congratulations your account awaits: verify your email to start shopping ',
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
                        onPressed: () => Get.to(()=> Sucessmessage(
                          image: Timages.logo,
                          title: 'Your acount sucessfully created!',
                          subtitile: 'Congratultions!!',
                          onPressed: () => Get.to(()=> const LoginScreen()),
                        )),
                        child: const Text('Continue'),
                      ),
                    ),
                
                const SizedBox(
                height: Tsizes.spaceBtwItems,
              ),

               SizedBox(
                      width: double.infinity,
                      child: TextButton(
                        onPressed: () {},
                        child: const Text('Resend Email'),
                      ),
                    ),

            ],
          ),
        ),
      ),
    );
  }
}
