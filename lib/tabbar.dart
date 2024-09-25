import 'package:ecommerce2/colors.dart';
import 'package:ecommerce2/device_utilities.dart';
import 'package:flutter/material.dart';

class TTabBar extends StatelessWidget implements PreferredSizeWidget {
  const TTabBar({
    super.key, required this.tabs,
  });

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: TabBar(
        isScrollable: true,
        indicatorColor: TColors.primaryColor,
        
        unselectedLabelColor: TColors.dark,
        labelColor: TColors.primaryColor,
            
        tabs: tabs,
      )
    );
  }
  
  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(TDeviceUtilities.getAppBarHeight());
  
}
