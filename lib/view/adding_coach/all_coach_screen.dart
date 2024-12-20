import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart'; // استيراد الترجمة
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gym_app/utills/colors.dart';
import 'package:gym_app/utills/components.dart';

class AllCoachScreen extends StatefulWidget {
  const AllCoachScreen({super.key});

  @override
  State<AllCoachScreen> createState() => _AllCoachScreenState();
}

class _AllCoachScreenState extends State<AllCoachScreen> {
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
  ];

  Widget buildDepartmentCard(Map<String, String> dept) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: buildPaymentsSection(
        text: dept['id'] ?? AppLocalizations.of(context)!.defaultId,
        title: dept['name'] ?? AppLocalizations.of(context)!.defaultName,
        subtitle: dept['description'] ?? AppLocalizations.of(context)!.defaultDescription,
        imagePath: dept['imagePath'] ?? 'assets/image/default-image.png',
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
          child: Column(
            children: [
              Header(
                context: context,
                title: localizations.all,
                text: localizations.coach,
              ),
              const SizedBox(height: 40),
              Expanded(
                child: ListView.builder(
                  itemCount: departments.length,
                  itemBuilder: (context, index) {
                    return buildDepartmentCard(departments[index]);
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
