import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'sizes.dart';
class TSearchContainer extends StatelessWidget {
  const TSearchContainer({
    super.key, required this.text, this.icon = Iconsax.search_normal,  this.showBackground = true,  this.showBorder = true, this.onTap,  this.padding = const EdgeInsets.symmetric(horizontal: Tsizes.defaultSpaces),
  });

  final String text;
  final IconData? icon;
  final bool showBackground,showBorder;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry padding;
 
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
       padding:padding,
        child: Container(
           width: MediaQuery.of(context).size.width,
           padding: const EdgeInsets.all(Tsizes.md),
           decoration : BoxDecoration(
             color: showBackground? Colors.white : Colors.transparent,
             borderRadius : BorderRadius.circular(Tsizes.cardRadiusLg),
             border :showBorder? Border.all(color: Colors.grey):null,
           ),
           child: Row(
             children: [
               Icon(icon,color:Color.fromARGB(255, 65, 64, 64)),
               const SizedBox(
       width: Tsizes.spaceBtwItems,
      ),
      Text(text, style: Theme.of(context).textTheme.bodySmall,)
             ],
           ),
        
        ),
      ),
    );
  }
}

