import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gym_app/utills/colors.dart';
import 'package:gym_app/utills/components.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AddingEmployeeScreen extends StatefulWidget {
  const AddingEmployeeScreen({super.key});

  @override
  State<AddingEmployeeScreen> createState() => _AddingEmployeeScreenState();
}

class _AddingEmployeeScreenState extends State<AddingEmployeeScreen> {
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
                  title: localizations.addingAn,
                  text: localizations.employee,
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
                buildTextFormField(localizations.id, nameController,
                    svgPath: "assets/SVG/images/Tick Square.svg"),
                buildTextFormField(localizations.fullName, nameController,
                    svgPath: "assets/SVG/images/Tick Square.svg"),
                buildTextFormField(localizations.dateOfBirth, nameController,
                    svgPath: "assets/SVG/images/Tick Square.svg"),
                buildTextFormField(localizations.nationalNumber, nameController,
                    svgPath: "assets/SVG/images/Tick Square.svg"),
                buildTextFieldMaxLin(
                    labelText: localizations.aboutEmployee,
                    descriptionController: nameController,
                    svgPath: "assets/SVG/images/On.svg"),
                buildDropdownButton(
                    hint: localizations.section,
                    imag: 'assets/SVG/images/Tick Square.svg'),
                buildTextFormField(localizations.comprehensiveOverview,
                    nameController,
                    svgPath: "assets/SVG/images/Tick Square.svg"),
                buildTextFormField(localizations.country, nameController,
                    svgPath: "assets/SVG/images/Tick Square.svg"),
                buildTextFormField(localizations.state, nameController,
                    svgPath: "assets/SVG/images/Tick Square.svg"),
                const SizedBox(height: 20),
                buildCustomButton(
                    context: context,
                    width: 326,
                    height: 50,
                    text: localizations.createNow,
                    backgroundColor: ColorManager.primaryColor,
                    onPressed: () {}),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
