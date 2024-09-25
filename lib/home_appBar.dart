

import 'package:ecommerce2/appBar.dart';
import 'package:ecommerce2/cart_menu_icon.dart';
import 'package:flutter/material.dart';

class THomeAppBar extends StatelessWidget {
  const THomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TAppBar(
       title: Column(
         crossAxisAlignment : CrossAxisAlignment.start,
         children: [
           Text(
             'flutter developer ',
             style: Theme.of(context)
                 .textTheme
                 .labelMedium!
                 .apply(color: Colors.grey),
           ),
     
           //text
           Text(
             'Rutuja Uplenchwar',
             style: Theme.of(context)
                 .textTheme
                 .headlineSmall!
                 .apply(color: Colors.white),
                 
           ),
         ],
       ),
       actions: [
         
            TCartCounterWidget( onPressed: (){},iconColor:Colors.white )
       ],
     );
  }
}

