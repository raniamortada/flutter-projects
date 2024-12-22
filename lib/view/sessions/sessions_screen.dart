import 'package:flutter/material.dart';
import 'package:gym_app/utills/components.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
        title: Text(
          AppLocalizations.of(context)!.sessions, // Use localized text here
          style: const TextStyle(color: Colors.white, fontSize: 18),
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
              Text(
                AppLocalizations.of(context)!.yourTrainingToday, // Use localized text
                style: const TextStyle(
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
              sectionHeader(AppLocalizations.of(context)!.trainers), // Use localized text
              const SizedBox(height: 8),
              buildTrainersList(),
              const SizedBox(height: 20),

              // Videos Section
              sectionHeader(AppLocalizations.of(context)!.videos), // Use localized text
              const SizedBox(height: 8),
              buildVideosList(),
              const SizedBox(height: 20),

              // Tutorials Section
              sectionHeader(AppLocalizations.of(context)!.tutorials), // Use localized text
              const SizedBox(height: 8),
              buildTutorialsList(),
            ],
          ),
        ),
      ),
    );
  }
}
