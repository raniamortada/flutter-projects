import 'package:flutter/material.dart';
import 'package:gym_app/utills/colors.dart';
import 'package:gym_app/utills/components.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:gym_app/view/accounting_system/accounting_system_screen.dart';
import 'package:gym_app/view/activity_level/activity_level_screen.dart';

import '../Add_products_services/Add_products_services_screen.dart';
import '../Add_products_services/all_products_screen.dart';
import '../accounting_system/all_accounting_screen.dart';
import '../add_new_department/add_new_department_screen.dart';
import '../add_new_department/all_department_screen.dart';
import '../add_new_tournament/add_new_tournament_screen.dart';
import '../add_new_tournament/all_tournament_screen.dart';
import '../add_training/add_training_screen.dart';
import '../add_training/all_training_screen.dart';
import '../add_training_section/add_training_section_screen.dart';
import '../add_training_section/all_training_section.dart';
import '../adding_coach/adding_coach_screen.dart';
import '../adding_coach/all_coach_screen.dart';
import '../adding_diet/adding_diet_screen.dart';
import '../adding_diet/all_diet_screen.dart';
import '../adding_employee/adding_employee_screen.dart';
import '../adding_employee/all_employee_screen.dart';
import '../adding_trainer/adding_trainer_screen.dart';
import '../adding_trainer/all_trainer_screen.dart';
import '../age_selection/age_selection_screen.dart';
import '../championship_results/all_championship_screen.dart';
import '../championship_results/championship_results_screen.dart';
import '../details_team/details_team_screen.dart';
import '../diet_plan/diet_plan_screen.dart';
import '../fitness_trainers/fitness_trainers_screen.dart';
import '../gender_selection/gender_selection_screen.dart';
import '../goal/goal_screen.dart';
import '../height/height_screen.dart';
import '../hello_sarah/hello_sarah_screen.dart';
import '../insight/insight.dart';
import '../modify_club_settings/modify_club_settings_screen.dart';
import '../new_team/all_team_screen.dart';
import '../new_team/new_team_screen.dart';
import '../notifications/notification_clos.dart';
import '../notifications/notification_today.dart';
import '../notifications/notifications_screen.dart';
import '../premium/premium_screen.dart';
import '../privacy_policy/privacy_policy_screen.dart';
import '../profile/profile_screen.dart';
import '../reviews/reviews_screen.dart';
import '../sessions/sessions_screen.dart';
import '../settings/settings_screen.dart';
import '../subscription/subscription.dart';
import '../subscription/subscription_screen.dart';
import '../trainer_detail/trainer_detail_screen.dart';
import '../units_of_measure/units_of_measure_screen.dart';
import '../weight_selection/weight_selection_screen.dart';
import '../workout_categories/workout_categories_screen.dart';
import '../workout_plan_detail/workout_plan_detail_screen.dart';
import '../write_review/write_review_screen.dart';
import 'home_play_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final List<Map<String, String>> departments = [
    {
      'id': '#ID',
      'name': '#name department',
      'description': '#description',
      'imagePath': 'assets/image/man-training-with-weight-lifting.png',
    },
    {
      'id': '#ID',
      'name': '#name department',
      'description': '#description',
      'imagePath': 'assets/image/man-training-with-weight-lifting.png',
    },
    {
      'id': '#ID',
      'name': '#name department',
      'description': '#description',
      'imagePath': 'assets/image/man-training-with-weight-lifting.png',
    },
    {
      'id': '#ID',
      'name': '#name department',
      'description': '#description',
      'imagePath': 'assets/image/man-training-with-weight-lifting.png',
    },
    {
      'id': '#ID',
      'name': '#name department',
      'description': '#description',
      'imagePath': 'assets/image/man-training-with-weight-lifting.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 0.0),
      key: _scaffoldKey,
      drawer: GymDrawer(),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 40, right: 16, left: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildHeader(context ),
                GestureDetector(
                  onTap: () {
                    _scaffoldKey.currentState?.openDrawer();
                  },
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/image/Image (3).png"),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            buildSectionHeader(AppLocalizations.of(context)!.allProducts, onViewAll: () {}),
            SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(8, (index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 12.0),
                    child: ProfileCard(
                      name: "Stella ${index + 1}",
                      imagePath: "assets/image/unsplash_rIIeOYIJ0IU.png",
                      isVerified: true,
                    ),
                  );
                }),
              ),
            ),
            SizedBox(height: 30),
            buildPieChart(),
            SizedBox(height: 20),
            buildSectionHeader(AppLocalizations.of(context)!.allCoaches, onViewAll: () {}),
            SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(8, (index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 12.0),
                    child: ProfileCard(
                      name: "Stella ${index + 1}",
                      imagePath: "assets/image/unsplash_rIIeOYIJ0IU.png",
                      isVerified: true,
                    ),
                  );
                }),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppLocalizations.of(context)!.categories,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  AppLocalizations.of(context)!.seeAll,
                  style: TextStyle(color: Colors.grey.shade400),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildCategoryCard("Gym", "assets/image/unsplash_YxCrQm9XNgg.png"),
                buildCategoryCard("Yoga", "assets/image/unsplash_YxCrQm9XNgg.png"),
                buildCategoryCard("Fitness", "assets/image/unsplash_YxCrQm9XNgg.png"),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppLocalizations.of(context)!.trending,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  AppLocalizations.of(context)!.seeAll,
                  style: TextStyle(color: Colors.grey.shade400),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                buildTrendingCard("Gym Centres", "assets/image/unsplash_YxCrQm9XNgg.png"),
                const SizedBox(width: 12),
                buildTrendingCard("Trainer centres", "assets/image/unsplash_YxCrQm9XNgg.png"),
              ],
            ),
            const SizedBox(height: 20),
             Text(
              AppLocalizations.of(context)!.discover,
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                buildTrendingCard("Discover", "assets/image/unsplash_YxCrQm9XNgg.png"),
                const SizedBox(width: 12),
                buildTrendingCard("Explore", "assets/image/unsplash_YxCrQm9XNgg.png"),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppLocalizations.of(context)!.paymentsFromTrainees,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  AppLocalizations.of(context)!.seeAll,
                  style: TextStyle(color: ColorManager.primaryColor),
                ),
              ],
            ),
            ...departments.map((dept) => Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: buildPaymentsSection(
                text: dept['id'] ?? '',
                title: dept['name'] ?? '',
                subtitle: dept['description'] ?? '',
                imagePath: dept['imagePath'] ?? '',
              ),
            )),
            Directionality
              (
              textDirection: TextDirection.rtl,
              child: GridView(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate:
                const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4),
                children: [
                  BuildAdministrativeList(
                    image: "assets/SVG/images/ico.svg",
                    text:"Accounting System",
                    //AppLocalizations.of(context)!.registerTeacher,  // Translated text
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => AccountingSystemScreen())
                      );
                    },
                  ),
                  BuildAdministrativeList(
                    image: "assets/SVG/images/ico.svg",
                    text:"AllAccounting",
                    //AppLocalizations.of(context)!.registerTeacher,  // Translated text
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => AllAccountingScreen())
                      );
                    },
                  ),
                  BuildAdministrativeList(
                    image: "assets/SVG/images/ico.svg",
                    text:"Activity Level",
                    //AppLocalizations.of(context)!.registerTeacher,  // Translated text
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => ActivityLevelScreen())
                      );
                    },
                  ),
                  BuildAdministrativeList(
                    image: "assets/SVG/images/ico.svg",
                    text:"Add New Department",
                    //AppLocalizations.of(context)!.registerTeacher,  // Translated text
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => AddNewDepartmentScreen())
                      );
                    },
                  ),
                  BuildAdministrativeList(
                    image: "assets/SVG/images/ico.svg",
                    text:"AllDepartment",
                    //AppLocalizations.of(context)!.registerTeacher,  // Translated text
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => AllDepartmentScreen())
                      );
                    },
                  ),
                  BuildAdministrativeList(
                    image: "assets/SVG/images/ico.svg",
                    text:"AddNewTournament",
                    //AppLocalizations.of(context)!.registerTeacher,  // Translated text
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => AddNewTournamentScreen())
                      );
                    },
                  ),
                  BuildAdministrativeList(
                    image: "assets/SVG/images/ico.svg",
                    text:"AllTournament",
                    //AppLocalizations.of(context)!.registerTeacher,  // Translated text
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => AllTournamentScreen())
                      );
                    },
                  ),
                  BuildAdministrativeList(
                    image: "assets/SVG/images/ico.svg",
                    text:"AddProductsServices",
                    //AppLocalizations.of(context)!.registerTeacher,  // Translated text
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => AddProductsServicesScreen())
                      );
                    },
                  ),
                  BuildAdministrativeList(
                    image: "assets/SVG/images/ico.svg",
                    text:"AllProducts",
                    //AppLocalizations.of(context)!.registerTeacher,  // Translated text
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => AllProductsScreen())
                      );
                    },
                  ),
                  BuildAdministrativeList(
                    image: "assets/SVG/images/ico.svg",
                    text:"AddTraining",
                    //AppLocalizations.of(context)!.registerTeacher,  // Translated text
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => AddTrainingScreen())
                      );
                    },
                  ),
                  BuildAdministrativeList(
                    image: "assets/SVG/images/ico.svg",
                    text:"AllTraining",
                    //AppLocalizations.of(context)!.registerTeacher,  // Translated text
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => AllTrainingScreen())
                      );
                    },
                  ),
                  BuildAdministrativeList(
                    image: "assets/SVG/images/ico.svg",
                    text:"AddTrainingSection",
                    //AppLocalizations.of(context)!.registerTeacher,  // Translated text
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => AddTrainingSectionScreen())
                      );
                    },
                  ),
                  BuildAdministrativeList(
                    image: "assets/SVG/images/ico.svg",
                    text:"AllTrainingSection",
                    //AppLocalizations.of(context)!.registerTeacher,  // Translated text
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => AllTrainingSection())
                      );
                    },
                  ),
                  BuildAdministrativeList(
                    image: "assets/SVG/images/ico.svg",
                    text:"AddingCoach",
                    //AppLocalizations.of(context)!.registerTeacher,  // Translated text
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => AddingCoachScreen())
                      );
                    },
                  ),
                  BuildAdministrativeList(
                    image: "assets/SVG/images/ico.svg",
                    text:"AllCoach",
                    //AppLocalizations.of(context)!.registerTeacher,  // Translated text
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => AllCoachScreen())
                      );
                    },
                  ),
                  BuildAdministrativeList(
                    image: "assets/SVG/images/ico.svg",
                    text:"AddingDiet",
                    //AppLocalizations.of(context)!.registerTeacher,  // Translated text
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => AddingDietScreen())
                      );
                    },
                  ),
                  BuildAdministrativeList(
                    image: "assets/SVG/images/ico.svg",
                    text:"AllDiet",
                    //AppLocalizations.of(context)!.registerTeacher,  // Translated text
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => AllDietScreen())
                      );
                    },
                  ),
                  BuildAdministrativeList(
                    image: "assets/SVG/images/ico.svg",
                    text:"AddingEmployee",
                    //AppLocalizations.of(context)!.registerTeacher,  // Translated text
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => AddingEmployeeScreen())
                      );
                    },
                  ),
                  BuildAdministrativeList(
                    image: "assets/SVG/images/ico.svg",
                    text:"AllEmployee",
                    //AppLocalizations.of(context)!.registerTeacher,  // Translated text
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => AllEmployeeScreen())
                      );
                    },
                  ),
                  BuildAdministrativeList(
                    image: "assets/SVG/images/ico.svg",
                    text:"AddingTrainer",
                    //AppLocalizations.of(context)!.registerTeacher,  // Translated text
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => AddingTrainerScreen())
                      );
                    },
                  ),
                  BuildAdministrativeList(
                    image: "assets/SVG/images/ico.svg",
                    text:"AgeSelection",
                    //AppLocalizations.of(context)!.registerTeacher,  // Translated text
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => AgeSelectionScreen())
                      );
                    },
                  ),
                  BuildAdministrativeList(
                    image: "assets/SVG/images/ico.svg",
                    text:"ChampionshipResults",
                    //AppLocalizations.of(context)!.registerTeacher,  // Translated text
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => ChampionshipResultsScreen())
                      );
                    },
                  ),
                  BuildAdministrativeList(
                    image: "assets/SVG/images/ico.svg",
                    text:"DetailsTeamScreen",
                    //AppLocalizations.of(context)!.registerTeacher,  // Translated text
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => DetailsTeamScreen())
                      );
                    },
                  ),
                  BuildAdministrativeList(
                    image: "assets/SVG/images/ico.svg",
                    text:"DietPlan",
                    //AppLocalizations.of(context)!.registerTeacher,  // Translated text
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => DietPlanScreen())
                      );
                    },
                  ),
                  BuildAdministrativeList(
                    image: "assets/SVG/images/ico.svg",
                    text:"FitnessTrainers",
                    //AppLocalizations.of(context)!.registerTeacher,  // Translated text
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => FitnessTrainersScreen())
                      );
                    },
                  ),
                  BuildAdministrativeList(
                    image: "assets/SVG/images/ico.svg",
                    text:"GenderSelection",
                    //AppLocalizations.of(context)!.registerTeacher,  // Translated text
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => GenderSelectionScreen())
                      );
                    },
                  ),
                  BuildAdministrativeList(
                    image: "assets/SVG/images/ico.svg",
                    text:"Goal",
                    //AppLocalizations.of(context)!.registerTeacher,  // Translated text
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => GoalScreen())
                      );
                    },
                  ),
                  BuildAdministrativeList(
                    image: "assets/SVG/images/ico.svg",
                    text:"Height",
                    //AppLocalizations.of(context)!.registerTeacher,  // Translated text
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => HeightScreen())
                      );
                    },
                  ),
                  BuildAdministrativeList(
                    image: "assets/SVG/images/ico.svg",
                    text:"HelloSarah",
                    //AppLocalizations.of(context)!.registerTeacher,  // Translated text
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => HelloSarahScreen())
                      );
                    },
                  ),
                  BuildAdministrativeList(
                    image: "assets/SVG/images/ico.svg",
                    text:"HomePlay",
                    //AppLocalizations.of(context)!.registerTeacher,  // Translated text
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => HomePlayScreen())
                      );
                    },
                  ),
                  BuildAdministrativeList(
                    image: "assets/SVG/images/ico.svg",
                    text:"ModifyClubSettings",
                    //AppLocalizations.of(context)!.registerTeacher,  // Translated text
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => ModifyClubSettingsScreen())
                      );
                    },
                  ),
                  BuildAdministrativeList(
                    image: "assets/SVG/images/ico.svg",
                    text:"AllTeam",
                    //AppLocalizations.of(context)!.registerTeacher,  // Translated text
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => AllTeamScreen())
                      );
                    },
                  ),
                  BuildAdministrativeList(
                    image: "assets/SVG/images/ico.svg",
                    text:"NewTeam",
                    //AppLocalizations.of(context)!.registerTeacher,  // Translated text
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => NewTeamScreen())
                      );
                    },
                  ),
                  BuildAdministrativeList(
                    image: "assets/SVG/images/ico.svg",
                    text:"NotificationClos",
                    //AppLocalizations.of(context)!.registerTeacher,  // Translated text
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => NotificationClos())
                      );
                    },
                  ),
                  BuildAdministrativeList(
                    image: "assets/SVG/images/ico.svg",
                    text:"NotificationToday",
                    //AppLocalizations.of(context)!.registerTeacher,  // Translated text
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => NotificationToday())
                      );
                    },
                  ),
                  BuildAdministrativeList(
                    image: "assets/SVG/images/ico.svg",
                    text:"Notifications",
                    //AppLocalizations.of(context)!.registerTeacher,  // Translated text
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => NotificationsScreen())
                      );
                    },
                  ),
                  BuildAdministrativeList(
                    image: "assets/SVG/images/ico.svg",
                    text:"Premium",
                    //AppLocalizations.of(context)!.registerTeacher,  // Translated text
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => PremiumScreen())
                      );
                    },
                  ),
                  BuildAdministrativeList(
                    image: "assets/SVG/images/ico.svg",
                    text:"PrivacyPolicy",
                    //AppLocalizations.of(context)!.registerTeacher,  // Translated text
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => PrivacyPolicyScreen())
                      );
                    },
                  ),
                  BuildAdministrativeList(
                    image: "assets/SVG/images/ico.svg",
                    text:"Reviews",
                    //AppLocalizations.of(context)!.registerTeacher,  // Translated text
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => ReviewsScreen())
                      );
                    },
                  ),
                  BuildAdministrativeList(
                    image: "assets/SVG/images/ico.svg",
                    text:"Sessions",
                    //AppLocalizations.of(context)!.registerTeacher,  // Translated text
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => SessionsScreen())
                      );
                    },
                  ),
                  BuildAdministrativeList(
                    image: "assets/SVG/images/ico.svg",
                    text:"Settings",
                    //AppLocalizations.of(context)!.registerTeacher,  // Translated text
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => SettingsScreen())
                      );
                    },
                  ),
                  BuildAdministrativeList(
                    image: "assets/SVG/images/ico.svg",
                    text:"Subscription",
                    //AppLocalizations.of(context)!.registerTeacher,  // Translated text
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => Subscription())
                      );
                    },
                  ),
                  BuildAdministrativeList(
                    image: "assets/SVG/images/ico.svg",
                    text:"Subscription",
                    //AppLocalizations.of(context)!.registerTeacher,  // Translated text
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => SubscriptionScreen())
                      );
                    },
                  ),
                  BuildAdministrativeList(
                    image: "assets/SVG/images/ico.svg",
                    text:"TrainerDetail",
                    //AppLocalizations.of(context)!.registerTeacher,  // Translated text
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => TrainerDetailScreen())
                      );
                    },
                  ),
                  BuildAdministrativeList(
                    image: "assets/SVG/images/ico.svg",
                    text:"UnitsOfMeasure",
                    //AppLocalizations.of(context)!.registerTeacher,  // Translated text
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => UnitsOfMeasureScreen())
                      );
                    },
                  ),
                  BuildAdministrativeList(
                    image: "assets/SVG/images/ico.svg",
                    text:"WeightSelection",
                    //AppLocalizations.of(context)!.registerTeacher,  // Translated text
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => WeightSelectionScreen())
                      );
                    },
                  ),
                  BuildAdministrativeList(
                    image: "assets/SVG/images/ico.svg",
                    text:"WorkoutCategories",
                    //AppLocalizations.of(context)!.registerTeacher,  // Translated text
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => WorkoutCategoriesScreen())
                      );
                    },
                  ),
                  BuildAdministrativeList(
                    image: "assets/SVG/images/ico.svg",
                    text:"WorkoutDetail",
                    //AppLocalizations.of(context)!.registerTeacher,  // Translated text
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => WorkoutDetailScreen())
                      );
                    },
                  ),
                  BuildAdministrativeList(
                    image: "assets/SVG/images/ico.svg",
                    text:"WriteReview",
                    //AppLocalizations.of(context)!.registerTeacher,  // Translated text
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => WriteReviewScreen())
                      );
                    },
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
