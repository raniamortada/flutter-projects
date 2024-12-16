import 'package:flutter/material.dart';
import 'package:gym_app/utills/colors.dart';
import 'package:gym_app/view/adding_Employee/adding_employee_screen.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'view/accounting_system/accounting_system_screen.dart';
import 'view/add_New_Department/add_new_department_screen.dart';
import 'view/add_new_tournament/add_new_tournament_screen.dart';
import 'view/add_training_section/add_training_section_screen.dart';
import 'view/adding_coach/adding_coach_screen.dart';
import 'view/adding_coach/all_coach_screen.dart';
import 'view/add_new_department/all_department_screen.dart';
import 'view/adding_diet/adding_diet_screen.dart';
import 'view/adding_employee/all_employee_screen.dart';
import 'view/adding_trainer/adding_trainer_screen.dart';
import 'view/adding_trainer/all_trainer_screen.dart';
import 'view/details_team/details_team_screen.dart';
import 'view/fitness_trainers/fitness_trainers_screen.dart';
import 'view/gender_selection/gender_selection_screen.dart';
import 'view/modify_Club_Settings/modify_club_settings_screen.dart';
import 'view/new_team/new_team_screen.dart';
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
      home: FitnessTrainersScreen(),
    );
  }
}
