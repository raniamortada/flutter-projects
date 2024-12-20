import 'package:flutter/material.dart';
import 'package:gym_app/utills/colors.dart';
import 'package:gym_app/utills/components.dart';
import 'package:gym_app/view/height/height_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class WeightSelectionScreen extends StatefulWidget {
  @override
  _WeightSelectionScreenState createState() => _WeightSelectionScreenState();
}

class _WeightSelectionScreenState extends State<WeightSelectionScreen> {
  double _weight = 54;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(height: 20),
            Column(
              children: [
                Text(
                  AppLocalizations.of(context)!.whatsYourWeight,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  AppLocalizations.of(context)!.changeLater,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  "${_weight.toInt()}",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "kg",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 24,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(21, (index) {
                      return Container(
                        width: 2,
                        height: index % 5 == 0 ? 50 : 30,
                        color: index == 10 ? Colors.yellow : Colors.greenAccent,
                      );
                    }),
                  ),
                  Slider(
                    value: _weight,
                    min: 30,
                    max: 100,
                    activeColor: Colors.yellow,
                    inactiveColor: Colors.greenAccent.withOpacity(0.5),
                    onChanged: (value) {
                      setState(() {
                        _weight = value;
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 200),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    buildCustomButton(borderRadius: 48,
                        svgPath: "assets/SVG/images/chevron-right.svg",
                        width: 120,
                        height: 50,
                        context: context,
                        text: AppLocalizations.of(context)!.next,
                        backgroundColor: ColorManager.primaryColor,
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => HeightScreen()),
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
    );
  }
}
