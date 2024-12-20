import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gym_app/utills/colors.dart';
import 'package:gym_app/utills/components.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AddingTrainerScreen extends StatefulWidget {
  const AddingTrainerScreen({super.key});

  @override
  State<AddingTrainerScreen> createState() => _AddingTrainerScreenState();
}

class _AddingTrainerScreenState extends State<AddingTrainerScreen> {
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
                  title: localizations.adding_a,
                  text: localizations.trainer,
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
                buildTextFormField(localizations.full_name, nameController,
                    svgPath: "assets/SVG/images/Tick Square.svg"),
                buildTextFormField(localizations.username, nameController,
                    svgPath: "assets/SVG/images/Tick Square.svg"),
                buildTextFormField(localizations.phone_number, nameController,
                    svgPath: "assets/SVG/images/Tick Square.svg"),
                buildTextFormField(localizations.subscription_number, nameController,
                    svgPath: "assets/SVG/images/Tick Square.svg"),
                buildTextFieldMaxLin(
                    labelText: localizations.email,
                    descriptionController: nameController,
                    svgPath: "assets/SVG/images/On.svg"),
                buildTextFieldMaxLin(
                    labelText: localizations.about_the_trainer,
                    descriptionController: nameController,
                    svgPath: "assets/SVG/images/On.svg"),
                buildTextFormField(localizations.date_of_birth, nameController,
                    svgPath: "assets/SVG/images/Tick Square.svg"),
                buildDropdownButton(
                    hint: localizations.subtype,
                    imag: 'assets/SVG/images/Tick Square.svg'),
                buildTextFormField(localizations.monthly_subscription_value, nameController,
                    svgPath: "assets/SVG/images/Tick Square.svg"),
                buildTextFormField(localizations.total_subscription_value, nameController,
                    svgPath: "assets/SVG/images/Tick Square.svg"),
                buildTextFormField(localizations.height, nameController,
                    svgPath: "assets/SVG/images/Tick Square.svg"),
                buildTextFormField(localizations.weight, nameController,
                    svgPath: "assets/SVG/images/Tick Square.svg"),
                buildDropdownButton(
                    hint: localizations.professional_degree,
                    imag: 'assets/SVG/images/Tick Square.svg'),
                buildTextFormField(localizations.nationality, nameController,
                    svgPath: "assets/SVG/images/Tick Square.svg"),
                buildDropdownButton(
                    hint: localizations.gender,
                    imag: 'assets/SVG/images/Tick Square.svg'),
                buildTextFormField(localizations.address, nameController,
                    svgPath: "assets/SVG/images/Tick Square.svg"),
                buildTextFormField(localizations.governorate, nameController,
                    svgPath: "assets/SVG/images/Tick Square.svg"),
                buildTextFormField(localizations.postal_code, nameController,
                    svgPath: "assets/SVG/images/Tick Square.svg"),
                buildTextFormField(localizations.website, nameController,
                    svgPath: "assets/SVG/images/Tick Square.svg"),
                buildTextFormField(localizations.facebook, nameController,
                    svgPath: "assets/SVG/images/Tick Square.svg"),
                buildTextFormField(localizations.twitter, nameController,
                    svgPath: "assets/SVG/images/Tick Square.svg"),
                buildTextFormField(localizations.instagram, nameController,
                    svgPath: "assets/SVG/images/Tick Square.svg"),
                buildTextFormField(localizations.youtube, nameController,
                    svgPath: "assets/SVG/images/Tick Square.svg"),
                SizedBox(height: 20),
                buildCustomButton(
                    context: context,
                    width: 326,
                    height: 50,
                    text: localizations.createNow,
                    backgroundColor: ColorManager.primaryColor,
                    onPressed: () {}),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
