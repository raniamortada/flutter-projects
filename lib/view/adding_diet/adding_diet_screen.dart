import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gym_app/utills/colors.dart';
import 'package:gym_app/utills/components.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AddingDietScreen extends StatefulWidget {
  const AddingDietScreen({super.key});

  @override
  State<AddingDietScreen> createState() => _AddingDietScreenState();
}

class _AddingDietScreenState extends State<AddingDietScreen> {
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
                  title: localizations.adding,
                  text: localizations.diet,
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
                    print(localizations.cameraTapped);
                  },
                ),
                buildTextFormField(
                  localizations.dietId,
                  nameController,
                  svgPath: "assets/SVG/images/Tick Square.svg",
                ),
                buildDropdownButton(
                  hint: localizations.mealRating,
                  imag: 'assets/SVG/images/Tick Square.svg',
                ),
                buildTextFormField(
                  localizations.dietName,
                  nameController,
                  svgPath: "assets/SVG/images/Tick Square.svg",
                ),
                buildTextFieldMaxLin(
                  labelText: localizations.dietDescription,
                  descriptionController: nameController,
                  svgPath: "assets/SVG/images/On.svg",
                ),
                buildTextFieldMaxLin(
                  labelText: localizations.dietComponents,
                  descriptionController: nameController,
                  svgPath: "assets/SVG/images/On.svg",
                ),
                buildTextFormField(
                  localizations.dietStartTime,
                  nameController,
                  svgPath: "assets/SVG/images/Tick Square.svg",
                ),
                buildTextFormField(
                  localizations.dietEndTime,
                  nameController,
                  svgPath: "assets/SVG/images/Tick Square.svg",
                ),
                const SizedBox(height: 20),
                buildCustomButton(
                  context: context,
                  width: 326,
                  height: 50,
                  text: localizations.createNow,
                  backgroundColor: ColorManager.primaryColor,
                  onPressed: () {
                    print(localizations.createNowTapped);
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
