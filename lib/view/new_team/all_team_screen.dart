import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gym_app/utills/colors.dart';
import 'package:gym_app/utills/components.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AllTeamScreen extends StatefulWidget {
  const AllTeamScreen({super.key});

  @override
  State<AllTeamScreen> createState() => _AllTeamScreenState();
}

class _AllTeamScreenState extends State<AllTeamScreen> {
  final TextEditingController nameController = TextEditingController();
  final List<Map<String, String>> departments = [
    {
      'id': '#ID',
      'name': '#name department',
      'description': '#description',
      'imagePath': 'assets/image/man-training-with-weight-lifting.png',
    },
    {
      'id': '#ID',
      'name': '#name department',
      'description': '#description',
      'imagePath': 'assets/image/man-training-with-weight-lifting.png',
    },
    {
      'id': '#ID',
      'name': '#name department',
      'description': '#description',
      'imagePath': 'assets/image/man-training-with-weight-lifting.png',
    },
    {
      'id': '#ID',
      'name': '#name department',
      'description': '#description',
      'imagePath': 'assets/image/man-training-with-weight-lifting.png',
    },
    {
      'id': '#ID',
      'name': '#name department',
      'description': '#description',
      'imagePath': 'assets/image/man-training-with-weight-lifting.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
            child: Column(
              children: [
                Header(
                  context: context,
                  title: AppLocalizations.of(context)!.allTeam,
                  text: '',
                ),
                const SizedBox(height: 40),
                ...departments.map((dept) => Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: buildPaymentsSection(
                    text: AppLocalizations.of(context)!.id,
                    title: dept['name'] ?? AppLocalizations.of(context)!.nameDepartment,
                    subtitle: dept['description'] ?? AppLocalizations.of(context)!.description,
                    imagePath: dept['imagePath'] ?? '',
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
