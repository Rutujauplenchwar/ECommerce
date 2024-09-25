import 'package:ecommerce2/forgotpassword.dart';
import 'package:ecommerce2/image_strings.dart';
import 'package:ecommerce2/navigation.dart';
import 'package:ecommerce2/sign_up.dart';
import 'package:ecommerce2/sizes.dart';
import 'package:ecommerce2/spacing_style.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TspacingStyle.paddingwithAppBarWeight,
          child: Column(
            children: [
              // Logo, title, and subtitle
              Column(
                children: [
                  Image(
                    height: 100,
                    image: AssetImage(Timages.logo),
                  ),
                  Text(
                    'Welcome to login Page1',
                    style: Theme.of(context).textTheme.headlineMedium,
                    // textAlign:TextAlign.left ,
                  ),
                  const SizedBox(
                    height: Tsizes.sm,
                  ),
                  Text(
                    'Welcome to login Page2',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ],
              ),
              const SizedBox(height: Tsizes.spaceBtwSections),

              // Form
              Form(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: Tsizes.spaceBtwSections,
                  ),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.direct_right),
                          labelText: 'Enter Email',
                        ),
                      ),
                      const SizedBox(height: Tsizes.spaceBwtInputFields),
                      TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.password_check),
                          labelText: 'Enter password',
                          suffixIcon: Icon(Iconsax.eye_slash),
                        ),
                      ),
                      const SizedBox(height: Tsizes.spaceBwtInputFields / 2),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Checkbox(value: true, onChanged: (value) {}),
                              const Text('Remember me'),
                            ],
                          ),
                          TextButton(
                            onPressed: () => Get.to(() => const Forgotpassword()),
                            child: const Text('Forgot password?'),
                          ),
                        ],
                      ),
                      const SizedBox(height: Tsizes.spaceBtwSections),

                      // Sign in button
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () => Get.to(() => const NavigationMenu()),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            foregroundColor: Colors.white,
                          ),
                          child: const Text('Sign in'),
                        ),
                      ),
                      const SizedBox(height: Tsizes.spaceBtwItems),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            Get.to(SignUp());
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            foregroundColor: Colors.white,
                          ),
                          child: const Text('Create Account'),
                        ),
                      ),
                      const SizedBox(height: Tsizes.spaceBtwSections / 2),

                      // Divider
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                            child: Divider(
                              thickness: 0.5,
                              indent: 60,
                              endIndent: 5,
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            'Or Sign in with',
                            style: Theme.of(context).textTheme.labelMedium,
                          ),
                          Flexible(
                            child: Divider(
                              thickness: 0.5,
                              indent: 5,
                              endIndent: 60,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: Tsizes.spaceBtwSections / 2),

                      // Footer
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: const Image(
                                image: AssetImage(Timages.logo),
                                width: Tsizes.iconMd,
                                height: Tsizes.iconMd,
                              ),
                            ),
                          ),
                          const SizedBox(width: Tsizes.spaceBtwItems),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: const Image(
                                image: AssetImage(Timages.logo),
                                width: Tsizes.iconMd,
                                height: Tsizes.iconMd,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
