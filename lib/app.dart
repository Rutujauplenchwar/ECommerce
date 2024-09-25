import 'package:ecommerce2/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: TAppTheme.lightTheme,
      home: const OnboardingScreen(),
       
    );
  }
}

