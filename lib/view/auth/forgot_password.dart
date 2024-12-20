import 'package:flutter/material.dart';
import 'package:gym_app/utills/colors.dart';
import 'package:gym_app/utills/components.dart';
import 'package:gym_app/view/auth/verification.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ForgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 100, right: 24, left: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 32,
                  height: 32,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Color(0xff2C2C2E)
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_back_ios),
                    color: Colors.white, iconSize: 15,
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Text(
              localizations.forgotPasswordTitle,
              style: TextStyle(color: Colors.white,
                  fontSize: 24, fontWeight: FontWeight.w700,
                  fontFamily: "Integral CF"),
            ),
            SizedBox(height: 10),
            Text(
              localizations.forgotPasswordSubtitle,
              style: TextStyle(color: Colors.white, fontSize: 10,
                  fontFamily: "Integral CF"),
            ),
            SizedBox(height: 40),
            InputFieldWidget(
              label: localizations.email,
            ),
            SizedBox(height: 100),
            Center(
              child: Text(
                localizations.tryAnotherWay,
                style: TextStyle(color: ColorManager.textsColor,
                    fontSize: 13),
              ),
            ),
            SizedBox(height: 30),
            Center(
              child: buildCustomButton(
                  width: 263,
                  height: 50,
                  borderRadius: 24,
                  context: context,
                  text: localizations.send,
                  backgroundColor: ColorManager.primaryColor,
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => VerificationScreen()),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
