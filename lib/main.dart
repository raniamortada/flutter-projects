import 'package:flutter/material.dart';
import 'package:gym_app/utills/colors.dart';
import 'package:gym_app/view/adding_Employee/adding_employee_screen.dart';
import 'package:gym_app/view/hello_sarah/hello_sarah_screen.dart';
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
import 'view/diet_plan/diet_plan_screen.dart';
import 'view/fitness_trainers/fitness_trainers_screen.dart';
import 'view/gender_selection/gender_selection_screen.dart';
import 'view/home/home.dart';
import 'view/home/home_play_screen.dart';
import 'view/insight/insight.dart';
import 'view/modify_Club_Settings/modify_club_settings_screen.dart';
import 'view/new_team/new_team_screen.dart';
import 'view/notifications/notification_clos.dart';
import 'view/notifications/notification_today.dart';
import 'view/notifications/notifications_screen.dart';
import 'view/premium/premium_screen.dart';
import 'view/privacy_policy/privacy_policy_screen.dart';
import 'view/profile/profile_screen.dart';
import 'view/reviews/reviews_screen.dart';
import 'view/sessions/sessions_screen.dart';
import 'view/settings/settings_screen.dart';
import 'view/splash/splash_screen.dart';
import 'view/subscription/subscription.dart';
import 'view/subscription/subscription_screen.dart';
import 'view/trainer_detail/trainer_detail_screen.dart';
import 'view/units_of_measure/units_of_measure_screen.dart';
import 'view/weight_selection/weight_selection_screen.dart';
import 'view/workout_categories/workout_categories_screen.dart';
import 'view/workout_plan_detail/workout_plan_detail_screen.dart';
import 'view/write_review/write_review_screen.dart';

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
      home: HomeScreen(),
    );
  }
}
