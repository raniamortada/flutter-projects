import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gym_app/utills/colors.dart';
import 'package:gym_app/utills/components.dart';
import 'package:gym_app/view/auth/login_screen.dart';
import 'package:gym_app/view/auth/sign_in.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 80),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                   Center(
                     child: Text("Define the user attribute",
                       //AppLocalizations.of(context)!.pickoneUpToStartNow,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Colors.white
                      ),
                     ),
                   ),
                  SizedBox(height: 10,),
                  Text("To give you a better experience we need\n We want to know who you are",
                    //AppLocalizations.of(context)!.pickoneUpToStartNow,
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: Colors.white
                    ),
                  ),
                   SizedBox(height: 20),
                  buildOnboardingItem(
                    context: context,
                    image: 'assets/SVG/images/admin.svg',
                    width: 120,
                    height: 88,
                    label: "admin",
                    containerColor: ColorManager.primaryColor,
                    textColor: Colors.black,
                    //AppLocalizations.of(context)!.imPatient,
                  ),
                  const SizedBox(height: 16),
                  buildOnboardingItem(
                    context: context,
                    image: 'assets/SVG/images/tra.svg',
                    width: 115,
                    height: 114,
                    label: "Trainer",
                    containerColor: ColorManager.cardColor,
                    textColor: Colors.black,
                    //AppLocalizations.of(context)!.imPatient,
                  ),
                  const SizedBox(height: 16),
                  buildOnboardingItem(
                    context: context,
                    image: 'assets/SVG/images/play.svg',
                    width: 115,
                    height: 114,
                    label: "Player",
                    containerColor: Color(0xff2C2C2E),
                    textColor: ColorManager.primaryColor,
                    //AppLocalizations.of(context)!.imPatient,
                  ),
                  SizedBox(height: 10,),
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
                              MaterialPageRoute(builder: (context) => SignIn()),
                            );
                          }),

                    ],
                  )

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildOnboardingItem({
    required BuildContext context,
    required String image,
    required String label,
    required Color containerColor,
    required Color textColor,
    required double width,
    required double height,
  }) {
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => SignIn()),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                color: containerColor,
                borderRadius: BorderRadius.circular(100),
              ),
              child: Column(
                children: [
                  SvgPicture.asset(
                    image,
                    width: width,
                    height: height,
                    fit: BoxFit.cover,
                  ),
                  Text(
                    label,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      fontFamily: "Switzer",
                      color: textColor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }


}
