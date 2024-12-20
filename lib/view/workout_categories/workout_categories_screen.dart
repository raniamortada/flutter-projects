import 'package:flutter/material.dart';
import 'package:gym_app/utills/components.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class WorkoutCategoriesScreen extends StatefulWidget {
  @override
  _WorkoutCategoriesScreenState createState() =>
      _WorkoutCategoriesScreenState();
}

class _WorkoutCategoriesScreenState extends State<WorkoutCategoriesScreen> {
  String selectedMeal = "Breakfast";
  final List<Map<String, String>> beginnerWorkouts = [
    {
      "title": "Wake Up Call",
      "subtitle": "04 Workouts for Beginner",
      "image": "assets/image/unsplash_aNHu7X6_vmI.png"
    },
    {
      "title": "Full Body Goal Crusher",
      "subtitle": "07 Workouts for Beginner",
      "image": "assets/image/unsplash_aNHu7X6_vmI.png"
    },
    {
      "title": "Lower Body Strength",
      "subtitle": "05 Workouts for Beginner",
      "image": "assets/image/unsplash_aNHu7X6_vmI.png"
    },
    {
      "title": "Lower Body Strength",
      "subtitle": "05 Workouts for Beginner",
      "image": "assets/image/unsplash_aNHu7X6_vmI.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 40),
          Center(
            child: Text(
              AppLocalizations.of(context)!.mealCategories,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                fontFamily: "Roboto",
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppLocalizations.of(context)!.breakfast,
              AppLocalizations.of(context)!.lunch,
              AppLocalizations.of(context)!.dinner,
            ].map((meal) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedMeal = meal;
                  });
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8),
                  padding: const EdgeInsets.symmetric(
                      vertical: 10, horizontal: 20),
                  decoration: BoxDecoration(
                    color: selectedMeal == meal
                        ? Colors.orange
                        : Colors.grey.shade800,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    meal,
                    style: TextStyle(
                      color: selectedMeal == meal
                          ? Colors.black
                          : Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: WorkoutList(workouts: beginnerWorkouts),
          ),
        ],
      ),
    );
  }
}
