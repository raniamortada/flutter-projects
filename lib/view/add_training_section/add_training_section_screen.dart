import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gym_app/utills/colors.dart';
import 'package:gym_app/utills/components.dart';

class AddTrainingSectionScreen extends StatefulWidget {
  const AddTrainingSectionScreen({super.key});

  @override
  State<AddTrainingSectionScreen> createState() => _AddTrainingSectionScreenState();
}

class _AddTrainingSectionScreenState extends State<AddTrainingSectionScreen> {
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
                  title: localizations.add,
                  text: localizations.trainingSection,
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
                  localizations.id,
                  nameController,
                  svgPath: "assets/SVG/images/Tick Square.svg",
                ),
                buildTextFormField(
                  localizations.trainingDepartmentTitle,
                  nameController,
                  svgPath: "assets/SVG/images/Tick Square.svg",
                ),
                buildTextFieldMaxLin(
                  labelText: localizations.clubDescription,
                  descriptionController: nameController,
                  svgPath: "assets/SVG/images/On.svg",
                ),
                const SizedBox(height: 200),
                buildCustomButton(
                  context: context,
                  width: 326,
                  height: 50,
                  text: localizations.createNow,
                  backgroundColor: ColorManager.primaryColor,
                  onPressed: () {},
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
