import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/features/authentication/views/screens/onboarding/onboarding.dart';
import 'package:t_store/utils/theme/theme.dart';

// use this class to setup themes, initial Bindings and much more
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  // as we are using GetX for state management
  // need to declare GetMaterialApp instead of Material App
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      home: const OnBoardingScreen(),
    );
  }

}

