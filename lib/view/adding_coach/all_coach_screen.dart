import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gym_app/utills/colors.dart';
import 'package:gym_app/utills/components.dart';

class AllCoachScreen extends StatefulWidget {
  const AllCoachScreen({super.key});

  @override
  State<AllCoachScreen> createState() => _AllCoachScreenState();
}

class _AllCoachScreenState extends State<AllCoachScreen> {
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
                  title: "All ",
                  text: ' coach',
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
