import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart'; // استيراد الترجمة
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gym_app/utills/colors.dart';
import 'package:gym_app/utills/components.dart';

class AddingCoachScreen extends StatefulWidget {
  const AddingCoachScreen({super.key});

  @override
  State<AddingCoachScreen> createState() => _AddingCoachScreenState();
}

class _AddingCoachScreenState extends State<AddingCoachScreen> {
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 20, right: 16, left: 16),
            child: Column(
              children: [
                Header(
                  context: context,
                  title: localizations.addingA,
                  text: localizations.coach,
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
                  localizations.fullName,
                  nameController,
                  svgPath: "assets/SVG/images/Tick Square.svg",
                ),
                buildTextFormField(
                  localizations.username,
                  nameController,
                  svgPath: "assets/SVG/images/Tick Square.svg",
                ),
                buildTextFormField(
                  localizations.phoneNumber,
                  nameController,
                  svgPath: "assets/SVG/images/Tick Square.svg",
                ),
                buildTextFormField(
                  localizations.subscriptionNumber,
                  nameController,
                  svgPath: "assets/SVG/images/Tick Square.svg",
                ),
                buildTextFieldMaxLin(
                  labelText: localizations.aboutEmployee,
                  descriptionController: nameController,
                  svgPath: "assets/SVG/images/On.svg",
                ),
                buildTextFormField(
                  localizations.dateOfBirth,
                  nameController,
                  svgPath: "assets/SVG/images/Tick Square.svg",
                ),
                buildDropdownButton(
                  hint: localizations.coachStatus,
                  imag: 'assets/SVG/images/Tick Square.svg',
                ),
                buildTextFormField(
                  localizations.shiftStart,
                  nameController,
                  svgPath: "assets/SVG/images/Tick Square.svg",
                ),
                buildTextFormField(
                  localizations.salary,
                  nameController,
                  svgPath: "assets/SVG/images/Tick Square.svg",
                ),
                buildDropdownButton(
                  hint: localizations.gender,
                  imag: 'assets/SVG/images/Tick Square.svg',
                ),
                const SizedBox(height: 20),
                buildCustomButton(
                  context: context,
                  width: 326,
                  height: 50,
                  text: localizations.createNow,
                  backgroundColor: ColorManager.primaryColor,
                  onPressed: () {
                    // Add your logic here
                  },
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
