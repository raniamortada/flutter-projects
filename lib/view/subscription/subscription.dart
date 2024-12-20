import 'package:flutter/material.dart';
import 'package:gym_app/utills/colors.dart';
import 'package:gym_app/utills/components.dart';
import 'package:gym_app/view/auth/login_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Subscription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 460,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/image/Background (7).png'),
              ),
            ),
          ),

          Container(
            color: Colors.black.withOpacity(0.6),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 296),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  AppLocalizations.of(context)!.selectSubscriptionMethod,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 200),
                Center(
                  child: buildCustomButton(
                    width: 201,
                    height: 50,
                    borderRadius: 24,
                    svgPath: "assets/SVG/images/chevron-right.svg",
                    context: context,
                    text: AppLocalizations.of(context)!.annualSingle,
                    backgroundColor: ColorManager.listTitleColor,
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 20),
                Center(
                  child: buildCustomButton(
                    width: 201,
                    height: 50,
                    borderRadius: 24,
                    svgPath: "assets/SVG/images/chevron-right.svg",
                    context: context,
                    text: AppLocalizations.of(context)!.monthlySingle,
                    backgroundColor: ColorManager.listTitleColor,
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
