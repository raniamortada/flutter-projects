import 'package:flutter/material.dart';
import 'package:gym_app/utills/colors.dart';
import 'package:gym_app/utills/components.dart';



class WorkoutDetailScreen extends StatelessWidget {
  const WorkoutDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Stack(
            children: [
              Image.asset(
                'assets/image/Image (3).png',
                height: 350,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Positioned(
                left: 16,
                top: 40,
                child: GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),

          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration:  BoxDecoration(
                color: Color(0xff1C1C1E),
                borderRadius: BorderRadius.vertical(top: Radius.circular(50)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Day 01 - Warm Up",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      "04 Workouts for Beginner",
                      style: TextStyle(
                        color: Colors.orange,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Container(
                          width: 89,
                            height: 29,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: ColorManager.black
                            ),
                            child: iconDetail(Icons.schedule, "60 min")),
                        const SizedBox(width: 16),
                        Container(
                            width: 89,
                            height: 29,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: ColorManager.black
                            ),
                            child: iconDetail(Icons.local_fire_department, "350 Cal")),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      "Want your body to be healthy. Join our program with directions according to body’s goals. Increasing physical strength is the goal of strength training. Maintain body fitness by doing physical exercise at least 2-3 times a week.",
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 16),

                    Expanded(
                      child: ListView(
                        children: const [
                          ExerciseItem(
                            title: "Simple Warm-Up Exercises",
                            duration: "0:30",
                            image: "assets/simple_warmup.jpg",
                          ),
                          ExerciseItem(
                            title: "Stability Training Basics",
                            duration: "1:00",
                            image: "assets/stability_training.jpg",
                            isDisabled: true,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    buildCustomButton(context: context,
                        borderRadius: 24,
                        text: "Start Workout",
                        backgroundColor: ColorManager.primaryColor,
                        onPressed: (){})

                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }


}

