import 'package:flutter/material.dart';
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
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 20, right: 16, left: 16),
            child: Column(
              children: [
                Header(
                  context: context,
                  title: "Add",
                  text: ' training',
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
                buildTextFormField("The name of the training set",
                    nameController,
                    svgPath: "assets/SVG/images/Tick Square.svg"
                ),
                buildTextFormField("training number",
                    nameController,
                    svgPath: "assets/SVG/images/Tick Square.svg"
                ),
                buildTextFormField("Training name",
                    nameController,
                    svgPath: "assets/SVG/images/Tick Square.svg"
                ),
                buildTextFieldMaxLin( labelText: 'Training description',
                    descriptionController: nameController,
                    svgPath: "assets/SVG/images/On.svg"),
                buildTextFormField("Video - link from the site",
                    nameController,
                    svgPath: "assets/SVG/images/Tick Square.svg"
                ),
                buildTextFormField("training time",
                    nameController,
                    svgPath: "assets/SVG/images/Tick Square.svg"
                ),
                buildTextFormField("The number of iterations",
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

