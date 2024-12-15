import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gym_app/utills/colors.dart';
import 'package:gym_app/utills/components.dart';

class ChampionshipResultsScreen extends StatefulWidget {
  const ChampionshipResultsScreen({super.key});

  @override
  State<ChampionshipResultsScreen> createState() => _ChampionshipResultsScreenState();
}

class _ChampionshipResultsScreenState extends State<ChampionshipResultsScreen> {
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
                  title: "Championship ",
                  text: ' results',
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
                    hint: "player name",
                    imag: 'assets/SVG/images/Tick Square.svg'),
                buildTextFormField("phone number - autofill",
                    nameController,
                    svgPath: "assets/SVG/images/Tick Square.svg"
                ),
                buildTextFormField("E-mail - autofill",
                    nameController,
                    svgPath: "assets/SVG/images/Tick Square.svg"
                ),
                buildDropdownButton(
                    hint: "player score",
                    imag: 'assets/SVG/images/Tick Square.svg'),
                buildTextFormField("Performance evaluation",
                    nameController,
                    svgPath: "assets/SVG/images/Tick Square.svg"
                ),
                buildTextFieldMaxLin( labelText: 'Tournament description',
                    descriptionController: nameController,
                    svgPath: "assets/SVG/images/On.svg"),

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

