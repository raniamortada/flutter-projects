import 'package:flutter/material.dart';
import 'package:gym_app/utills/colors.dart';
import 'package:gym_app/utills/components.dart';
import 'package:gym_app/view/goal/goal_screen.dart';

import '../weight_selection/weight_selection_screen.dart';


class HeightScreen extends StatefulWidget {
  @override
  _HeightScreenState createState() => _HeightScreenState();
}

class _HeightScreenState extends State<HeightScreen> {
  int selectedHeight = 100;

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
                "What’s your height?",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 8),
              Text(
                "This helps us create your personalized plan",
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
                      selectedHeight = 100 + index;
                    });
                  },
                  childDelegate: ListWheelChildBuilderDelegate(
                    builder: (context, index) {
                      int age = 100 + index;
                      return Center(
                        child: Text(
                          "$age",
                          style: TextStyle(
                            fontSize: age == selectedHeight ? 58 : 43,
                            color: age == selectedHeight
                                ? Colors.white
                                : Colors.white54,
                            fontWeight: age == selectedHeight
                                ? FontWeight.bold
                                : FontWeight.normal,
                          ),
                        ),
                      );
                    },
                    childCount: 100,
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
                              MaterialPageRoute(builder: (context) => GoalScreen()),
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
