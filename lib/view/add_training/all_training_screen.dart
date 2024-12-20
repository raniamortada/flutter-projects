import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gym_app/utills/colors.dart';
import 'package:gym_app/utills/components.dart';

class AllTrainingScreen extends StatefulWidget {
  const AllTrainingScreen({super.key});

  @override
  State<AllTrainingScreen> createState() => _AllTrainingScreenState();
}

class _AllTrainingScreenState extends State<AllTrainingScreen> {
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
                  text: localizations.training,
                ),
                const SizedBox(height: 40),
                ...departments.map((dept) => Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: buildPaymentsSection(
                    text: dept['id'] ?? '',
                    title: dept['name'] ?? '',
                    subtitle: dept['description'] ?? '',
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
