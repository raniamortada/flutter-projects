import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gym_app/utills/colors.dart';
import 'package:gym_app/utills/components.dart';

class AddTrainingScreen extends StatefulWidget {
  const AddTrainingScreen({super.key});

  @override
  State<AddTrainingScreen> createState() => _AddTrainingScreenState();
}

class _AddTrainingScreenState extends State<AddTrainingScreen> {
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
                  text: localizations.training,
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
                  localizations.trainingSetName,
                  nameController,
                  svgPath: "assets/SVG/images/Tick Square.svg",
                ),
                buildTextFormField(
                  localizations.trainingNumber,
                  nameController,
                  svgPath: "assets/SVG/images/Tick Square.svg",
                ),
                buildTextFormField(
                  localizations.trainingName,
                  nameController,
                  svgPath: "assets/SVG/images/Tick Square.svg",
                ),
                buildTextFieldMaxLin(
                  labelText: localizations.trainingDescription,
                  descriptionController: nameController,
                  svgPath: "assets/SVG/images/On.svg",
                ),
                buildTextFormField(
                  localizations.videoLink,
                  nameController,
                  svgPath: "assets/SVG/images/Tick Square.svg",
                ),
                buildTextFormField(
                  localizations.trainingTime,
                  nameController,
                  svgPath: "assets/SVG/images/Tick Square.svg",
                ),
                buildTextFormField(
                  localizations.iterationsCount,
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
