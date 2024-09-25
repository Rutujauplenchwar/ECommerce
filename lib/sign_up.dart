import 'package:ecommerce2/colors.dart';
import 'package:ecommerce2/sizes.dart';
import 'package:ecommerce2/verify_email.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ecommerce2/image_strings.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Tsizes.defaultSpaces),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              Text(
                "Let's create your account",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: Tsizes.spaceBtwSections,
              ),
              // Form
              Form(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            decoration: const InputDecoration(
                              prefixIcon: Icon(Iconsax.user),
                              labelText: 'First Name',
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: Tsizes.spaceBtwItems,
                        ),
                        Expanded(
                          child: TextFormField(
                            decoration: const InputDecoration(
                              prefixIcon: Icon(Iconsax.user),
                              labelText: 'Last Name',
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: Tsizes.spaceBwtInputFields,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.user_edit),
                        labelText: 'username',
                      ),
                    ),
                    const SizedBox(
                      height: Tsizes.spaceBwtInputFields,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.direct),
                        labelText: 'Email',
                      ),
                    ),
                    const SizedBox(
                      height: Tsizes.spaceBwtInputFields,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.call),
                        labelText: 'Mobile Number',
                      ),
                    ),
                    const SizedBox(
                      height: Tsizes.spaceBwtInputFields,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.password_check),
                        suffixIcon: Icon(Iconsax.eye_slash),
                        labelText: 'Password',
                      ),
                    ),
                    const SizedBox(
                      height: Tsizes.spaceBwtInputFields,
                    ),
                    Row(
                      children: [
                        SizedBox(
                            width: 24,
                            height: 24,
                            child:
                                Checkbox(value: true, onChanged: (value) {})),
                        const SizedBox(width: Tsizes.spaceBtwItems),
                        Text.rich(TextSpan(children: [
                          TextSpan(
                              text: '${' I Agree to'}',
                              style: Theme.of(context).textTheme.bodySmall),
                          TextSpan(
                              text: '${' Privacy policy'}',
                              style:
                                  Theme.of(context).textTheme.bodyMedium!.apply(
                                        color: TColors.primaryColor,
                                        decoration: TextDecoration.underline,
                                        decorationColor: TColors.primaryColor,
                                      )),
                          TextSpan(
                              text: '${' and '}',
                              style: Theme.of(context).textTheme.bodySmall),
                          TextSpan(
                              text: '${'terms of use'}',
                              style:
                                  Theme.of(context).textTheme.bodyMedium!.apply(
                                        color: TColors.primaryColor,
                                        decoration: TextDecoration.underline,
                                        decorationColor: TColors.primaryColor,
                                      )),
                        ])),
                      ],
                    ),
                    const SizedBox(
                      height: Tsizes.spaceBwtInputFields,
                    ),

                  //button

                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () => Get.to(() => const VerifyEmail() ),
                        child: const Text('Create Account'),
                      ),
                    ),
                    const SizedBox(
                      height: Tsizes.spaceBtwSections / 2,
                    ),
                  ],
                ),
              ),

              //divider
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Flexible(
                  child: Divider(
                    thickness: 0.5,
                    indent: 60,
                    endIndent: 5,
                    color: Colors.grey,
                  ),
                ),
                Text('Or Sign in with',
                    style: Theme.of(context).textTheme.labelMedium),
                Flexible(
                  child: Divider(
                    thickness: 0.5,
                    indent: 5,
                    endIndent: 60,
                    color: Colors.grey,
                  ),
                ),
              ]),
              const SizedBox(
                height: Tsizes.spaceBtwSections / 2,
              ),
              //footer
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(100)),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Image(
                        image: AssetImage(Timages.logo),
                        width: Tsizes.iconMd,
                        height: Tsizes.iconMd,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: Tsizes.spaceBtwItems,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(100)),
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
    );
  }
}
