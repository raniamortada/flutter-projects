import 'package:flutter/material.dart';
import 'package:gym_app/utills/colors.dart';
import 'package:gym_app/view/adding_Employee/adding_Employee_screen.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'view/modify_Club_Settings/modify_Club_Settings_screen.dart';
import 'view/splash/splash_screen.dart';
import 'view/subscription/subscription.dart';
import 'view/subscription/subscription_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) => ResponsiveBreakpoints.builder(
        breakpoints: [
          const Breakpoint(start: 0, end: 450, name: MOBILE),
          const Breakpoint(start: 451, end: 800, name: TABLET),
          const Breakpoint(start: 801, end: 1920, name: DESKTOP),
          const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
        ],
        child: child!,
      ),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: ColorManager.backgroundColor
      ),
      home: AddingEmployeeScreen(),
    );
  }
}
