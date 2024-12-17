import 'package:flutter/material.dart';
import 'package:gym_app/utills/colors.dart';
import 'package:gym_app/utills/components.dart';

class HelloSarahScreen extends StatefulWidget {
  @override
  _HelloSarahScreenState createState() => _HelloSarahScreenState();
}

class _HelloSarahScreenState extends State<HelloSarahScreen> {
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
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
            _buildHeader(),
            const SizedBox(height: 40),
            _buildTodayWorkoutPlan(),
            const SizedBox(height: 20),
            buildWorkoutCard(
              title: "Full Body Goal Crusher",
              subtitle: "07 Workouts for Beginner",
              imagePath: "assets/image/unsplash_jD4MtXnsJ6w.png",
            ),
            const SizedBox(height: 30),
            buildSectionTitle("Workout Categories", "See All"),
            const SizedBox(height: 20),
            _buildMealSelector(),
            const SizedBox(height: 20),
            buildWorkoutCard(
              title: "Lower Body Strength",
              subtitle: "05 Workouts for Beginner",
              imagePath: "assets/image/unsplash_jD4MtXnsJ6w.png",
            ),
            const SizedBox(height: 30),
            buildSectionTitle("New Workouts"),
            const SizedBox(height: 20),
            buildWorkoutCard(
              title: "Wake Up Call",
              subtitle: "04 Workouts for Beginner",
              imagePath: "assets/image/unsplash_jD4MtXnsJ6w.png",
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          "HELLO SARAH,",
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        Text(
          "Good morning.",
          style: TextStyle(
            fontSize: 15,
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  Widget _buildTodayWorkoutPlan() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Today Workout Plan",
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w600,
            color: ColorManager.white,
          ),
        ),
        Text(
          "Mon 26 Apr",
          style: TextStyle(color: ColorManager.primaryColor),
        ),
      ],
    );
  }




  Widget _buildMealSelector() {
    final meals = ["Beginner", "Intermediate", "Advance"];
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: meals.map((meal) {
        return GestureDetector(
          onTap: () {
            setState(() {
              selectedMeal = meal;
            });
          },
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 5),
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            decoration: BoxDecoration(
              color: selectedMeal == meal ? Colors.orange : Colors.grey.shade800,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              meal,
              style: TextStyle(
                color: selectedMeal == meal ? Colors.black : Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
