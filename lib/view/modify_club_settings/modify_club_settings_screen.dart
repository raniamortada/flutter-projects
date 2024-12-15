import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gym_app/utills/colors.dart';
import 'package:gym_app/utills/components.dart';

class ModifyClubSettingsScreen extends StatefulWidget {
  const ModifyClubSettingsScreen({super.key});

  @override
  State<ModifyClubSettingsScreen> createState() => _ModifyClubSettingsScreenState();
}

class _ModifyClubSettingsScreenState extends State<ModifyClubSettingsScreen> {
  TextEditingController nameController = TextEditingController();

  List<Map<String, String>> fields = [
    {"label": "Club name", "svgPath": "assets/SVG/images/Tick Square.svg"},
    {"label": "Commercial registration number", "svgPath": "assets/SVG/images/Tick Square.svg"},
    {"label": "phone number", "svgPath": "assets/SVG/images/Tick Square.svg"},
    {"label": "E-mail", "svgPath": "assets/SVG/images/Tick Square.svg"},
    {"label": "Club address", "svgPath": "assets/SVG/images/Tick Square.svg"},
    {"label": "Country", "svgPath": "assets/SVG/images/Tick Square.svg"},
    {"label": "state", "svgPath": "assets/SVG/images/Tick Square.svg"},
    {"label": "Postal code", "svgPath": "assets/SVG/images/Tick Square.svg"},
    {"label": "Club website", "svgPath": "assets/SVG/images/Tick Square.svg"},
    {"label": "Facebook", "svgPath": "assets/SVG/images/Tick Square.svg"},
    {"label": "Instagram", "svgPath": "assets/SVG/images/Tick Square.svg"},
    {"label": "Twitter", "svgPath": "assets/SVG/images/Tick Square.svg"},
    {"label": "youtube", "svgPath": "assets/SVG/images/Tick Square.svg"},
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 20, right: 16, left: 16),
            child: Column(
              children: [
                Header(
                  context: context,
                  title: "Modify club",
                  text: 'settings',
                ),
                const SizedBox(height: 10),
                buildImageWithIcon(
                  imagePath: "assets/image/unsplash_rIIeOYIJ0IU.png",
                  imageSize: 94,
                  iconSize: 40,
                  iconBackgroundColor: Colors.grey[800]!,
                  icon: Icons.camera_alt,
                  iconColor: Colors.white,
                  onIconTap: () {
                    print("Camera icon tapped!");
                  },
                ),
                buildTextFormField(
                  "Club name",
                  nameController,
                  svgPath: "assets/SVG/images/Tick Square.svg",
                ),
                buildTextFormField(
                  "Commercial registration number",
                  nameController,
                  svgPath: "assets/SVG/images/Tick Square.svg",
                ),
                buildTextFormField(
                  "phone number",
                  nameController,
                  svgPath: "assets/SVG/images/Tick Square.svg",
                ),
                buildTextFormField(
                  "E-mail",
                  nameController,
                  svgPath: "assets/SVG/images/Tick Square.svg",
                ),
                buildTextFieldMaxLin(
                  labelText: 'Description of the club',
                  descriptionController: nameController,
                  svgPath: "assets/SVG/images/On.svg",
                ),
                ...fields.skip(4).map((field) => buildTextFormField(
                  field["label"]!,
                  nameController,
                  svgPath: field["svgPath"]!,
                )),
                SizedBox(height: 20),
                buildCustomButton(
                  context: context,
                  width: 326,
                  height: 50,
                  text: 'Create now',
                  backgroundColor: ColorManager.primaryColor,
                  onPressed: () {},
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
