import 'package:ecommerce2/appBar.dart';

import 'package:ecommerce2/colors.dart';
import 'package:ecommerce2/heading_section.dart';
import 'package:get/get.dart';
import 'profile.dart';
import 'package:ecommerce2/primary_header_container.dart';
import 'package:ecommerce2/settings_menu_tile.dart';
import 'package:ecommerce2/sizes.dart';
import 'package:ecommerce2/user_profile_tile.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(children: [
        TPrimaryHeaderContainer(
          child: Column(children: [
            //appbar
            TAppBar(
              title: Text('Account',
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium!
                      .apply(color: TColors.textWhite)),
            ),

            //user profile card
            TUserProfileTile(onPressed:() => Get.to(()=> const ProfileScreen() )),
            const SizedBox(
              height: Tsizes.spaceBtwSections,
            ),
          ]),
        ),
        //body
        Padding(
          padding: const EdgeInsets.all(Tsizes.defaultSpaces),
          child: Column(
            children: [
              const TSectionHeading(
                headingText: 'Account Settings',
                showActionButton: false,
              ),
              const SizedBox(height: Tsizes.spaceBtwItems),

              TSettingsMenuTile(
                icon: Iconsax.safe_home,
                title: 'My Addresses',
                subTitle: 'set shopping delivery address',
                onTap: () {},
              ),
              TSettingsMenuTile(
                icon: Iconsax.shopping_cart,
                title: 'My Cart',
                subTitle: 'add or remove products from cart',
                onTap: () {},
              ),
              TSettingsMenuTile(
                icon: Iconsax.bag_tick,
                title: 'My Orders',
                subTitle: 'In-progress and completed order',
                onTap: () {},
              ),
              TSettingsMenuTile(
                icon: Iconsax.bank,
                title: 'Bank Account',
                subTitle: 'Withdraw balance to registered bank Account',
                onTap: () {},
              ),
              TSettingsMenuTile(
                icon: Iconsax.discount_shape,
                title: 'My Coupons',
                subTitle: 'List of all discount coupons',
                onTap: () {},
              ),
              TSettingsMenuTile(
                icon: Iconsax.notification,
                title: 'Notifications',
                subTitle: 'Set any kind of notification Message',
                onTap: () {},
              ),
              TSettingsMenuTile(
                icon: Iconsax.security_card,
                title: 'Account privacy',
                subTitle: 'Manage data usage and connected account',
                onTap: () {},
              ),

              const SizedBox(height: Tsizes.spaceBtwSections),
              const TSectionHeading(
                headingText: 'App Settings',
                showActionButton: false,
              ),
              const SizedBox(height: Tsizes.spaceBtwItems),
              const TSettingsMenuTile(
                  icon: Iconsax.document_upload,
                  title: 'Load data',
                  subTitle: 'Upload data to your cloud firebase'),
              TSettingsMenuTile(
                icon: Iconsax.location,
                title: 'Geo-location',
                subTitle: 'Set recommendation based on location',
                trailing: Switch(value: false, onChanged: (value) {}),
              ),

              TSettingsMenuTile(
                icon: Iconsax.security_user,
                title: 'Safe mode',
                subTitle: 'Search result is safe for all ages',
                trailing: Switch(value: true, onChanged: (value) {}),
              ),
              TSettingsMenuTile(
                icon: Iconsax.image,
                title: 'HD image quality',
                subTitle: 'Set image quality to be seen',
                trailing: Switch(value: false, onChanged: (value) {}),
              ),

              //logout button
              const SizedBox(height: Tsizes.spaceBtwSections),
              SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                      onPressed: () {}, child: const Text('Logout'))),
              const SizedBox(height: Tsizes.spaceBtwSections * 2.5),
            ],
          ),
        )
      ]),
    ));
  }
}
