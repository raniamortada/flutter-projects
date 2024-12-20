import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gym_app/utills/colors.dart';
import 'package:gym_app/utills/components.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class NewTeamScreen extends StatefulWidget {
  const NewTeamScreen({super.key});

  @override
  State<NewTeamScreen> createState() => _NewTeamScreenState();
}

class _NewTeamScreenState extends State<NewTeamScreen> {
  TextEditingController nameController = TextEditingController();

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
                  title: AppLocalizations.of(context)!.newTeam,
                  text: '',
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
                  AppLocalizations.of(context)!.id,
                  nameController,
                  svgPath: "assets/SVG/images/Tick Square.svg",
                ),
                buildTextFormField(
                  AppLocalizations.of(context)!.teamName,
                  nameController,
                  svgPath: "assets/SVG/images/Tick Square.svg",
                ),
                buildTextFieldMaxLin(
                  labelText: AppLocalizations.of(context)!.teamDescription,
                  descriptionController: nameController,
                  svgPath: "assets/SVG/images/On.svg",
                ),
                buildDropdownButton(
                  hint: AppLocalizations.of(context)!.teamCoach,
                  imag: 'assets/SVG/images/Tick Square.svg',
                ),
                buildDropdownButton(
                  hint: AppLocalizations.of(context)!.teamMembers,
                  imag: 'assets/SVG/images/Tick Square.svg',
                ),
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
                SizedBox(height: 20),
                buildCustomButton(
                  context: context,
                  width: 326,
                  height: 50,
                  text: AppLocalizations.of(context)!.createNow,
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
