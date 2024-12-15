import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gym_app/utills/colors.dart';
import 'package:gym_app/utills/components.dart';

class AddingCoachScreen extends StatefulWidget {
  const AddingCoachScreen({super.key});

  @override
  State<AddingCoachScreen> createState() => _AddingCoachScreenState();
}

class _AddingCoachScreenState extends State<AddingCoachScreen> {
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
                  title: "Adding a",
                  text: 'Coach',
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
                buildTextFormField("full name",
                    nameController,
                    svgPath: "assets/SVG/images/Tick Square.svg"
                ),
                buildTextFormField("@username",
                    nameController,
                    svgPath: "assets/SVG/images/Tick Square.svg"
                ),
                buildTextFormField("phone number",
                    nameController,
                    svgPath: "assets/SVG/images/Tick Square.svg"
                ),
                buildTextFormField("#Subscription number",
                    nameController,
                    svgPath: "assets/SVG/images/Tick Square.svg"
                ),
                buildTextFieldMaxLin( labelText: 'About the employee',
                    descriptionController: nameController,
                    svgPath: "assets/SVG/images/On.svg"),
                buildTextFieldMaxLin( labelText: 'About the employee',
                    descriptionController: nameController,
                    svgPath: "assets/SVG/images/On.svg"),
                buildTextFormField("date of birth",
                    nameController,
                    svgPath: "assets/SVG/images/Tick Square.svg"
                ),
                buildDropdownButton(
                    hint: "coach status",
                    imag: 'assets/SVG/images/Tick Square.svg'),
                buildTextFormField("The beginning of the shift",
                    nameController,
                    svgPath: "assets/SVG/images/Tick Square.svg"
                ),
                buildTextFormField("Salary",
                    nameController,
                    svgPath: "assets/SVG/images/Tick Square.svg"
                ),
                buildTextFormField("height",
                    nameController,
                    svgPath: "assets/SVG/images/Tick Square.svg"
                ),
                buildTextFormField("weight",
                    nameController,
                    svgPath: "assets/SVG/images/Tick Square.svg"
                ),
                buildDropdownButton(
                    hint: "Professional degree",
                    imag: 'assets/SVG/images/Tick Square.svg'),
                buildTextFormField("Nationality",
                    nameController,
                    svgPath: "assets/SVG/images/Tick Square.svg"
                ),
                buildDropdownButton(
                    hint: "gender",
                    imag: 'assets/SVG/images/Tick Square.svg'),
                buildTextFormField("address",
                    nameController,
                    svgPath: "assets/SVG/images/Tick Square.svg"
                ),
                buildTextFormField("Governorate",
                    nameController,
                    svgPath: "assets/SVG/images/Tick Square.svg"
                ),
                buildTextFormField("Postal code",
                    nameController,
                    svgPath: "assets/SVG/images/Tick Square.svg"
                ),
                buildTextFormField("website",
                    nameController,
                    svgPath: "assets/SVG/images/Tick Square.svg"
                ),
                buildTextFormField("Facebook",
                    nameController,
                    svgPath: "assets/SVG/images/Tick Square.svg"
                ),
                buildTextFormField("Twitter",
                    nameController,
                    svgPath: "assets/SVG/images/Tick Square.svg"
                ),
                buildTextFormField("Instagram",
                    nameController,
                    svgPath: "assets/SVG/images/Tick Square.svg"
                ),
                buildTextFormField("YouTube",
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

