

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TDeviceUtilities
{
  static void hideKeyboard(BuildContext context)
  {
    FocusScope.of(context).requestFocus(FocusNode());
  }

  static Future<void> setStatusBarColor(Color color) async{
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: color),
    );
  }

    static double getBottomNavigationBarHeight()
    {
      return kBottomNavigationBarHeight;
    }

    static double getAppBarHeight()
  {
    return kToolbarHeight;
  }


}