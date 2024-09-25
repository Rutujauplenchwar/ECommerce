import 'package:ecommerce2/circular_image.dart';
import 'package:ecommerce2/colors.dart';
import 'package:ecommerce2/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart'; 
class TUserProfileTile extends StatelessWidget {
  const TUserProfileTile({
    super.key,required this.onPressed
  });
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: TCircularImage(image : Timages.logo ,width :50 ,height :50 ,padding :0),
      title : Text('coding with Rutuja',style:Theme.of(context).textTheme.headlineSmall!.apply(color : TColors.textWhite)),
      subtitle: Text('rutujauplenchwr@gmail.com',style:Theme.of(context).textTheme.bodyMedium!.apply(color : TColors.textWhite)),
      trailing: IconButton(onPressed: onPressed, icon: Icon(Iconsax.edit , color : TColors.textWhite)),
    );
  }
}
