import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
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
    final localizations = AppLocalizations.of(context);

    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              localizations!.tellUsAboutYourself,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            Text(
              localizations.knowYourGender,
              style: TextStyle(
                color: Colors.white70,
                fontSize: 12,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 40),
            GestureDetector(
              onTap: () => selectGender('Male'),
              child: CircleAvatar(
                radius: 70,
                backgroundColor: selectedGender == 'Male'
                    ? Colors.orange
                    : Color(0xff2C2C2E),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.male, size: 50, color: Colors.white),
                    SizedBox(height: 5),
                    Text(
                      localizations.male,
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
            GestureDetector(
              onTap: () => selectGender('Female'),
              child: CircleAvatar(
                radius: 70,
                backgroundColor: selectedGender == 'Female'
                    ? Colors.orange
                    : Color(0xff2C2C2E),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.female, size: 50, color: Colors.white),
                    SizedBox(height: 5),
                    Text(
                      localizations.female,
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 200),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                buildCustomButton(
                  borderRadius: 48,
                  svgPath: "assets/SVG/images/chevron-right.svg",
                  width: 120,
                  height: 50,
                  context: context,
                  text: localizations.next,
                  backgroundColor: ColorManager.primaryColor,
                  onPressed: () {
                    if (selectedGender.isNotEmpty) {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AgeSelectionScreen()),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(localizations.selectGender),
                          backgroundColor: Colors.red,
                        ),
                      );
                    }
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
