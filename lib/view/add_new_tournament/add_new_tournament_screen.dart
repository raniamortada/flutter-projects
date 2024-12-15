import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 20, right: 16, left: 16),
            child: Column(
              children: [
                Header(
                  context: context,
                  title: "Add a new ",
                  text: ' tournament',
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
                buildTextFormField("#ID",
                    nameController,
                    svgPath: "assets/SVG/images/Tick Square.svg"
                ),
                buildDropdownButton(
                    hint: "Tournament name",
                    imag: 'assets/SVG/images/Tick Square.svg'),
                buildTextFieldMaxLin( labelText: 'Tournament description',
                    descriptionController: nameController,
                    svgPath: "assets/SVG/images/On.svg"),
                buildDropdownButton(
                    hint: "Tournament type",
                    imag: 'assets/SVG/images/Tick Square.svg'),
                buildDropdownButton(
                    hint: "Add trainees",
                    imag: 'assets/SVG/images/Tick Square.svg'),
                buildDropdownButton(
                    hint: "Add trainers",
                    imag: 'assets/SVG/images/Tick Square.svg'),
                buildTextFormField("Tournament start date",
                    nameController,
                    svgPath: "assets/SVG/images/Tick Square.svg"
                ),
                buildTextFormField("The end of the tournament",
                    nameController,
                    svgPath: "assets/SVG/images/Tick Square.svg"
                ),
                buildDropdownButton(
                    hint: "Award type",
                    imag: 'assets/SVG/images/Tick Square.svg'),
                buildDropdownButton(
                    hint: "Championship level",
                    imag: 'assets/SVG/images/Tick Square.svg'),

                SizedBox(height: 20,),
                buildCustomButton(context: context,
                    width:326,
                    height: 50,
                    text: 'Create now',
                    backgroundColor: ColorManager.primaryColor,
                    onPressed: () {  }),
                SizedBox(height: 20,)

              ],
            ),
          ),
        ),
      ),
    );
  }
}

