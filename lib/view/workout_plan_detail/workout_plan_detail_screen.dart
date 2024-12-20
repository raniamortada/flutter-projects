import 'package:flutter/material.dart';
import 'package:gym_app/utills/colors.dart';
import 'package:gym_app/utills/components.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
                padding:  EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppLocalizations.of(context)!.dayTitle,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      AppLocalizations.of(context)!.workoutsForBeginner,
                      style: const TextStyle(
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
                          child: iconDetail(Icons.schedule, AppLocalizations.of(context)!.schedule),
                        ),
                        const SizedBox(width: 16),
                        Container(
                          width: 89,
                          height: 29,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: ColorManager.black
                          ),
                          child: iconDetail(Icons.local_fire_department, AppLocalizations.of(context)!.calories),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Text(
                      AppLocalizations.of(context)!.description,
                      style: const TextStyle(
                        color: Colors.white70,
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 16),

                    Expanded(
                      child: ListView(
                        children: [
                          ExerciseItem(
                            title: AppLocalizations.of(context)!.simpleWarmUp,
                            duration: "0:30",
                            image: "assets/simple_warmup.jpg",
                          ),
                          ExerciseItem(
                            title: AppLocalizations.of(context)!.stabilityTraining,
                            duration: "1:00",
                            image: "assets/stability_training.jpg",
                            isDisabled: true,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    buildCustomButton(
                        context: context,
                        borderRadius: 24,
                        text: AppLocalizations.of(context)!.startWorkout,
                        backgroundColor: ColorManager.primaryColor,
                        onPressed: () {}
                    )
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
