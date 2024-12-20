import 'package:flutter/material.dart';
import 'package:gym_app/utills/colors.dart';
import 'package:gym_app/utills/components.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class VerificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 100, right: 24, left: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 32,
                  height: 32,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Color(0xff2C2C2E),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_back_ios),
                    color: Colors.white,
                    iconSize: 15,
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Text(
              localizations.verification,
              style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 10),
            Text(
              localizations.checkEmail,
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            SizedBox(height: 40),
            PinCodeTextField(
              appContext: context,
              length: 6,
              onChanged: (value) {},
              animationType: AnimationType.fade,
              pinTheme: PinTheme(
                activeColor: Color(0xffD0FD3E),
                selectedColor: Color(0xffD0FD3E),
                inactiveColor: Colors.grey,
                borderWidth: 2,
              ),
              textStyle: TextStyle(color: Colors.white, fontSize: 20),
            ),
            SizedBox(height: 100),
            Center(
              child: Text(
                localizations.didYouReceiveCode,
                style: TextStyle(color: ColorManager.textsColor, fontSize: 16),
              ),
            ),
            SizedBox(height: 30),
            Center(
              child: buildCustomButton(
                width: 263,
                height: 50,
                borderRadius: 24,
                context: context,
                text: localizations.verify,
                backgroundColor: ColorManager.primaryColor,
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
