import 'package:ecommerce2/appBar.dart';
import 'package:ecommerce2/circular_image.dart';
import 'package:ecommerce2/heading_section.dart';
import 'package:ecommerce2/image_strings.dart';
import 'package:ecommerce2/profile_menu.dart';
import 'package:ecommerce2/sizes.dart';

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      appBar : TAppBar(showBackArrow : true , title:Text('Profile')),

      body : SingleChildScrollView(
        child : Padding(
          padding : EdgeInsets.all(Tsizes.defaultSpaces),
          child:Column(
            children :[
              SizedBox(
                width: double.infinity,
                child: Column(
                children: [
                  const TCircularImage(image: Timages.logo ,width : 80 ,height: 80),
                  TextButton(onPressed: (){}, child: const Text('Change Profile Picture')),
                ],
              ),),
              const SizedBox(height: Tsizes.spaceBtwItems/2,),
              const Divider(),
               const SizedBox(height: Tsizes.spaceBtwItems,),
               const TSectionHeading(headingText: 'Profile Information',showActionButton: false, ),
               const SizedBox(height: Tsizes.spaceBtwItems,),

          TProfileMenu(title: 'Name' , value:'Shopping with rutuja',onPressed: (){},),
          TProfileMenu(title: 'Username' , value:'rutuja_4002',onPressed: (){},),
          const SizedBox(height: Tsizes.spaceBtwItems,),
              const Divider(),
               const SizedBox(height: Tsizes.spaceBtwItems,),

               const TSectionHeading(headingText: 'Personal Information',showActionButton: false, ),
               const SizedBox(height: Tsizes.spaceBtwItems,),
          TProfileMenu(title: 'UserId' , value:'31181', icon : Iconsax.copy,onPressed: (){},),
          TProfileMenu(title: 'Email' , value:'rutujauplenchwar@gmail.com',onPressed: (){},),
          TProfileMenu(title: 'Phone Number' , value:'1233554325',onPressed: (){},),
          TProfileMenu(title: 'Gender' , value:'Female',onPressed: (){},),
          TProfileMenu(title: 'Date of Birth' , value:'19 Dec,2004',onPressed: (){},),
const Divider(),
               const SizedBox(height: Tsizes.spaceBtwItems,),
              Center(child: TextButton(onPressed: (){}, 
              child: Text('Close Account' , style: TextStyle(color: Colors.red),),
              ),)

          
            ]
          )
        )
      )
    );
  }
}

