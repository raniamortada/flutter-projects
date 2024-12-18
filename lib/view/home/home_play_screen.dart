import 'package:flutter/material.dart';
import 'package:gym_app/utills/components.dart';

class HomePlayScreen extends StatelessWidget {
  const HomePlayScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Hello Juliet",
                    style: TextStyle(color: Colors.orange, fontSize: 20),
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/image/unsplash_DrVJk1EaPSc (1).png"),
                  ),
                ],
              ),

              const Text(
                "Let's start your day",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Today Workout Plan",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  WorkoutCard("Jogging", "assets/image/unsplash_YxCrQm9XNgg.png"),
                  WorkoutCard("Push-up", "assets/image/unsplash_YxCrQm9XNgg.png"),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Categories",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  Text(
                    "See all",
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
                  const Text(
                    "Trending",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  Text(
                    "Sell all",
                    style: TextStyle(color: Colors.grey.shade400),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  buildTrendingCard("Gym Centres", "assets/image/unsplash_YxCrQm9XNgg.png"),
                  const SizedBox(width: 12),
                  buildTrendingCard(
                      "Trainer centres", "assets/image/unsplash_YxCrQm9XNgg.png"),
                ],
              ),
              const SizedBox(height: 20),
              // Section: Discover
              const Text(
                "Discover",
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
            ],
          ),
        ),
      ),
    );
  }


}
