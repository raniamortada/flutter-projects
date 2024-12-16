import 'package:flutter/material.dart';
import 'package:gym_app/utills/colors.dart';
import 'package:gym_app/utills/components.dart';

import '../age_selection/age_selection_screen.dart';


class GenderSelectionScreen extends StatefulWidget {
  @override
  _GenderSelectionScreenState createState() => _GenderSelectionScreenState();
}

class _GenderSelectionScreenState extends State<GenderSelectionScreen> {
  String selectedGender = '';

  void selectGender(String gender) {
    setState(() {
      selectedGender = gender;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "TELL US ABOUT YOURSELF!",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 10),
          Text(
            "TO GIVE YOU A BETTER EXPERIENCE WE NEED\nTO KNOW YOUR GENDER",
            style: TextStyle(
              color: Colors.white,
              fontSize: 10,
            ),
          ),
          SizedBox(height: 40),

          GestureDetector(
            onTap: () => selectGender('Male'),
            child: CircleAvatar(
              radius: 70,
              backgroundColor:
              selectedGender == 'Male' ? Colors.orange : Color(0xff2C2C2E),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.male, size: 50, color: Colors.white),
                  SizedBox(height: 5),
                  Text(
                    "Male",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 30),
          // Female Button
          GestureDetector(
            onTap: () => selectGender('Female'),
            child: CircleAvatar(
              radius: 70,
              backgroundColor:
              selectedGender == 'Female' ? Colors.orange : Colors.orange,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.female, size: 50, color: Colors.black),
                  SizedBox(height: 5),
                  Text(
                    "Female",
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 200),
          Row(mainAxisAlignment: MainAxisAlignment.end,
            children: [
              buildCustomButton(borderRadius: 48,
                  svgPath: "assets/SVG/images/chevron-right.svg",
                  width: 120,
                  height: 50,
                  context: context,
                  text:"Next",
                  //AppLocalizations.of(context)!.getStarted,
                  backgroundColor: ColorManager.primaryColor,
                  onPressed: (){
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => AgeSelectionScreen()),
                    );
                  }),

            ],
          )
        ],
      ),
    );
  }
}
