import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gym_app/utills/colors.dart';
import 'package:gym_app/utills/components.dart';

class AddingDietScreen extends StatefulWidget {
  const AddingDietScreen({super.key});

  @override
  State<AddingDietScreen> createState() => _AddingDietScreenState();
}

class _AddingDietScreenState extends State<AddingDietScreen> {
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
                  title: "Adding ",
                  text: ' a diet',
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
                    hint: "meal rating",
                    imag: 'assets/SVG/images/Tick Square.svg'),
                buildTextFormField("name of the diet",
                    nameController,
                    svgPath: "assets/SVG/images/Tick Square.svg"
                ),
                buildTextFieldMaxLin( labelText: 'Description of the diet',
                    descriptionController: nameController,
                    svgPath: "assets/SVG/images/On.svg"),
                buildTextFieldMaxLin( labelText: 'components of the diet',
                    descriptionController: nameController,
                    svgPath: "assets/SVG/images/On.svg"),
                buildTextFormField("beginning of the diet time",
                    nameController,
                    svgPath: "assets/SVG/images/Tick Square.svg"
                ),
                buildTextFormField("Diet time is over",
                    nameController,
                    svgPath: "assets/SVG/images/Tick Square.svg"
                ),

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

