import 'package:flutter/material.dart';
import 'package:gym_app/utills/colors.dart';
import 'package:gym_app/utills/components.dart';

import '../weight_selection/weight_selection_screen.dart';


class AgeSelectionScreen extends StatefulWidget {
  @override
  _AgeSelectionScreenState createState() => _AgeSelectionScreenState();
}

class _AgeSelectionScreenState extends State<AgeSelectionScreen> {
  int selectedAge = 36;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "HOW OLD ARE YOU ?",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 8),
              Text(
                "THIS HELPS US CREATE YOUR PERSONALIZED PLAN",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 40),
              Expanded(
                child: ListWheelScrollView.useDelegate(
                  itemExtent: 50,
                  perspective: 0.005,
                  diameterRatio: 2.5,
                  physics: FixedExtentScrollPhysics(),
                  onSelectedItemChanged: (index) {
                    setState(() {
                      selectedAge = 30 + index;
                    });
                  },
                  childDelegate: ListWheelChildBuilderDelegate(
                    builder: (context, index) {
                      int age = 30 + index;
                      return Center(
                        child: Text(
                          "$age",
                          style: TextStyle(
                            fontSize: age == selectedAge ? 58 : 43,
                            color: age == selectedAge
                                ? Colors.white
                                : Colors.white54,
                            fontWeight: age == selectedAge
                                ? FontWeight.bold
                                : FontWeight.normal,
                          ),
                        ),
                      );
                    },
                    childCount: 30,
                  ),
                ),
              ),
              SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 54,
                    height: 54,
                    decoration: BoxDecoration(
                      color: Color(0xff3A3A3C),
                      borderRadius: BorderRadius.circular(54)
                    ),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back, color: Colors.white),
                      iconSize: 32,
                    ),
                  ),

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
                              MaterialPageRoute(builder: (context) => WeightSelectionScreen()),
                            );
                          }),

                    ],
                  )
                ],
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
