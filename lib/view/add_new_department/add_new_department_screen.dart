import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gym_app/utills/colors.dart';
import 'package:gym_app/utills/components.dart';


class AddNewDepartmentScreen extends StatefulWidget {
  const AddNewDepartmentScreen({super.key});

  @override
  State<AddNewDepartmentScreen> createState() => _AddNewDepartmentScreenState();
}

class _AddNewDepartmentScreenState extends State<AddNewDepartmentScreen> {
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
                  text: 'Department',
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

              buildTextFormField("Club name",
                    nameController,
                    svgPath: "assets/SVG/images/Tick Square.svg"
                ),
                buildTextFieldMaxLin( labelText: 'Description of the club',
                    descriptionController: nameController,
                    svgPath: "assets/SVG/images/On.svg"),
                  SizedBox(height: 280,),

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

