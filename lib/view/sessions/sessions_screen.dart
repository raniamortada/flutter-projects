import 'package:flutter/material.dart';
import 'package:gym_app/utills/components.dart';

class SessionsScreen extends StatelessWidget {
  const SessionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Icon(Icons.arrow_back, color: Colors.white),
        centerTitle: true,
        title: const Text(
          "Sessions",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        actions: [
          CircleAvatar(
            backgroundImage: AssetImage("assets/image/unsplash_NbpUM86Jo8Y.png"),
          ),
          const SizedBox(width: 16),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Training Section
              const Text(
                "Your training today",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 12),
              buildTrainingCard(
                "assets/image/unsplash_NbpUM86Jo8Y.png",
                "17:34 / 59:32",
              ),
              const SizedBox(height: 20),

              // Trainers Section
              sectionHeader("Trainers"),
              const SizedBox(height: 8),
              buildTrainersList(),
              const SizedBox(height: 20),

              // Videos Section
              sectionHeader("Videos"),
              const SizedBox(height: 8),
              buildVideosList(),
              const SizedBox(height: 20),

              // Tutorials Section
              sectionHeader("Tutorials"),
              const SizedBox(height: 8),
              buildTutorialsList(),
            ],
          ),
        ),
      ),
    );
  }

}
