import 'package:flutter/material.dart';
import 'package:gym_app/utills/colors.dart';
import 'package:gym_app/utills/components.dart';
import 'package:gym_app/view/auth/login_screen.dart';

class SubscriptionScreen extends StatefulWidget {
  @override
  State<SubscriptionScreen> createState() => _SubscriptionScreenState();
}

class _SubscriptionScreenState extends State<SubscriptionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 460,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/image/Background.png'),

              ),
            ),
          ),

          Container(
            color: Colors.black.withOpacity(0.6),
          ),

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Text(
                  'Select the desired \n subscription method',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 70,),
                Center(
                  child: buildCustomButton(
                    width: 253,
                    height: 50,
                    borderRadius: 24,
                    svgPath: "assets/SVG/images/chevron-right.svg",
                      context: context,
                      text:"7 days free trial",
                      //AppLocalizations.of(context)!.getStarted,
                      backgroundColor: ColorManager.primaryColor,
                      onPressed: (){
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => LoginScreen()),
                        );
                      }),
                ),
                SizedBox(height: 30,),
                Center(
                  child: buildCustomButton(
                    width: 253,
                    height: 50,
                    borderRadius: 24,
                    svgPath: "assets/SVG/images/chevron-right.svg",
                      context: context,
                      text:"I’m Gym Monthly ",
                      //AppLocalizations.of(context)!.getStarted,
                      backgroundColor: ColorManager.primaryColor,
                      onPressed: (){
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => LoginScreen()),
                        );
                      }),
                ),
                SizedBox(height: 30,),
                Center(
                  child: buildCustomButton(
                    width: 253,
                    height: 50,
                    borderRadius: 24,
                    svgPath: "assets/SVG/images/chevron-right.svg",
                      context: context,
                      text:"I’m Gym Annual",
                      //AppLocalizations.of(context)!.getStarted,
                      backgroundColor: ColorManager.primaryColor,
                      onPressed: (){
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => LoginScreen()),
                        );
                      }),
                ),
                SizedBox(height: 70,),
                Center(
                  child: buildCustomButton(
                    width: 253,
                    height: 50,
                    borderRadius: 24,
                    svgPath: "assets/SVG/images/chevron-right.svg",
                      context: context,
                      text:"Single subscription",
                      //AppLocalizations.of(context)!.getStarted,
                      backgroundColor: ColorManager.listTitleColor,
                      onPressed: (){
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => LoginScreen()),
                        );
                      }),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


