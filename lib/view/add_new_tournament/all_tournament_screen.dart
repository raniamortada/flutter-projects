import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:gym_app/utills/colors.dart';
import 'package:gym_app/utills/components.dart';

class AllTournamentScreen extends StatefulWidget {
  const AllTournamentScreen({super.key});

  @override
  State<AllTournamentScreen> createState() => _AllTournamentScreenState();
}

class _AllTournamentScreenState extends State<AllTournamentScreen> {
  final TextEditingController nameController = TextEditingController();
  final List<Map<String, String>> tournaments = [
    {
      'id': '#ID',
      'name': '#name tournament',
      'description': '#description',
      'imagePath': 'assets/image/man-training-with-weight-lifting.png',
    },
    {
      'id': '#ID',
      'name': '#name tournament',
      'description': '#description',
      'imagePath': 'assets/image/man-training-with-weight-lifting.png',
    },
    {
      'id': '#ID',
      'name': '#name tournament',
      'description': '#description',
      'imagePath': 'assets/image/man-training-with-weight-lifting.png',
    },
    {
      'id': '#ID',
      'name': '#name tournament',
      'description': '#description',
      'imagePath': 'assets/image/man-training-with-weight-lifting.png',
    },
    {
      'id': '#ID',
      'name': '#name tournament',
      'description': '#description',
      'imagePath': 'assets/image/man-training-with-weight-lifting.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
            child: Column(
              children: [
                Header(
                  context: context,
                  title: localizations.all,
                  text: localizations.tournament,
                ),
                const SizedBox(height: 40),
                ...tournaments.map((tournament) => Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: buildPaymentsSection(
                    text: tournament['id'] ?? '',
                    title: tournament['name'] ?? '',
                    subtitle: tournament['description'] ?? '',
                    imagePath: tournament['imagePath'] ?? '',
                  ),
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
