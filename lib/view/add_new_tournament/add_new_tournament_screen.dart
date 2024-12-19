import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:gym_app/utills/colors.dart';
import 'package:gym_app/utills/components.dart';

class AddNewTournamentScreen extends StatefulWidget {
  const AddNewTournamentScreen({super.key});

  @override
  State<AddNewTournamentScreen> createState() => _AddNewTournamentScreenState();
}

class _AddNewTournamentScreenState extends State<AddNewTournamentScreen> {
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
                  title: localizations.addNew,
                  text: localizations.tournament,
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
                  localizations.id,
                  nameController,
                  svgPath: "assets/SVG/images/Tick Square.svg",
                ),
                buildDropdownButton(
                  hint: localizations.tournamentName,
                  imag: 'assets/SVG/images/Tick Square.svg',
                ),
                buildTextFieldMaxLin(
                  labelText: localizations.tournamentDescription,
                  descriptionController: nameController,
                  svgPath: "assets/SVG/images/On.svg",
                ),
                buildDropdownButton(
                  hint: localizations.tournamentType,
                  imag: 'assets/SVG/images/Tick Square.svg',
                ),
                buildDropdownButton(
                  hint: localizations.addTrainees,
                  imag: 'assets/SVG/images/Tick Square.svg',
                ),
                buildDropdownButton(
                  hint: localizations.addTrainers,
                  imag: 'assets/SVG/images/Tick Square.svg',
                ),
                buildTextFormField(
                  localizations.tournamentStartDate,
                  nameController,
                  svgPath: "assets/SVG/images/Tick Square.svg",
                ),
                buildTextFormField(
                  localizations.tournamentEndDate,
                  nameController,
                  svgPath: "assets/SVG/images/Tick Square.svg",
                ),
                buildDropdownButton(
                  hint: localizations.awardType,
                  imag: 'assets/SVG/images/Tick Square.svg',
                ),
                buildDropdownButton(
                  hint: localizations.championshipLevel,
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
                    print(localizations.createTournament);
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
