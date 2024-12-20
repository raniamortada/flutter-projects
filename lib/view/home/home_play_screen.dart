import 'package:flutter/material.dart';
import 'package:gym_app/utills/components.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomePlayScreen extends StatelessWidget {
  const HomePlayScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppLocalizations.of(context)!.helloUser,
                    style: TextStyle(color: Colors.orange, fontSize: 20),
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/image/unsplash_DrVJk1EaPSc (1).png"),
                  ),
                ],
              ),
              Text(
                AppLocalizations.of(context)!.startYourDay,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                AppLocalizations.of(context)!.todayWorkoutPlan,
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
                    AppLocalizations.of(context)!.trending, // الترجمة
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  Text(
                    AppLocalizations.of(context)!.sellAll, // الترجمة
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
              Text(
                AppLocalizations.of(context)!.discover, // الترجمة
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
