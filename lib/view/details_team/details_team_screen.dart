import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gym_app/utills/colors.dart';
import 'package:gym_app/utills/components.dart';

class DetailsTeamScreen extends StatefulWidget {
  const DetailsTeamScreen({super.key});

  @override
  State<DetailsTeamScreen> createState() => _DetailsTeamScreenState();
}

class _DetailsTeamScreenState extends State<DetailsTeamScreen> {
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
                  title: "Details",
                  text: 'Team',
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
                SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(8, (index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 12.0),
                        child: ProfileCard(
                          name: "Stella ${index + 1}",
                          imagePath: "assets/image/unsplash_rIIeOYIJ0IU.png",
                          isVerified: true,
                        ),
                      );
                    }),
                  ),
                ),
                buildPaymentsSection(
                  text:  'id',
                  title: 'name',
                  subtitle: 'description',
                  imagePath:  'assets/image/man-training-with-weight-lifting.png',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
