import 'package:flutter/material.dart';
import 'package:gym_app/utills/colors.dart';
import 'package:gym_app/utills/components.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class FitnessTrainersScreen extends StatefulWidget {
  const FitnessTrainersScreen({Key? key}) : super(key: key);

  @override
  State<FitnessTrainersScreen> createState() => _FitnessTrainersScreenState();
}

class _FitnessTrainersScreenState extends State<FitnessTrainersScreen> {
  final List<Map<String, String>> _trainers = [
    {
      "name": "Richard Will",
      "specialty": "High Intensity Training",
      "experience": "5 years experience",
      "rating": "4.5",
      "imagePath": "assets/image/Image (2).png",
    },
    {
      "name": "Emily Davis",
      "specialty": "Yoga and Pilates",
      "experience": "3 years experience",
      "rating": "4.7",
      "imagePath": "assets/image/Image (2).png",
    },
    {
      "name": "John Smith",
      "specialty": "Strength Training",
      "experience": "7 years experience",
      "rating": "4.8",
      "imagePath": "assets/image/Image (2).png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
          child: Column(
            children: [
              Row(
                children: [
                  buildBackButton(context),
                  const Spacer(),
                  Text(
                    localizations.fitnessTrainers,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Roboto",
                      color: Colors.white,
                    ),
                  ),
                  const Spacer(),
                ],
              ),
              const SizedBox(height: 20),
              // Trainer Cards
              Expanded(
                child: ListView.builder(
                  itemCount: _trainers.length,
                  itemBuilder: (context, index) {
                    final trainer = _trainers[index];
                    return TrainerCard(
                      trainerName: trainer["name"]!,
                      specialty: trainer["specialty"]!,
                      experience: trainer["experience"]!,
                      rating: trainer["rating"]!,
                      imagePath: trainer["imagePath"]!,
                      onArrowPressed: () {
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
