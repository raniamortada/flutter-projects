import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gym_app/utills/colors.dart';
import 'package:gym_app/utills/components.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerificationScreen extends StatefulWidget {
  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  void _showSuccessDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.green,
                  child: Icon(
                    Icons.arrow_back_ios,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 20),
                Text("Verification",
                  //AppLocalizations.of(context)!.changePasswordSuccess,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10),
                Text("Check your email. We’ve sent you the PIN at your email.",
                 // AppLocalizations.of(context)!.success,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                    // Navigator.of(context).push(
                    //     MaterialPageRoute(builder: (_) => UpdatePassword()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text("",
                   // AppLocalizations.of(context)!.backToHomepage,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 40),
                // Column(
                //   children: [
                //     BuildHeader(title: AppLocalizations.of(context)!.verification), // الترجمة هنا
                //     SizedBox(height: 10),
                //     SvgPicture.asset("assets/SVG/images/TEXTS.svg")
                //   ],
                // ),
                SizedBox(height: 20),
                Text("llllllll",
                 // AppLocalizations.of(context)!.checkYourEmail,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 30),
                PinCodeTextField(
                  appContext: context,
                  length: 6,
                  onChanged: (value) {},
                  animationType: AnimationType.fade,
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.underline,
                    fieldHeight: 50,
                    fieldWidth: 40,
                    activeColor: Color(0xffD0FD3E),
                    selectedColor: Colors.orange,
                    inactiveColor: Colors.grey,
                  ),
                  keyboardType: TextInputType.number,
                  textStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 20),
                Text("kkkkkk",
                 // AppLocalizations.of(context)!.didYouReceiveCode,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 40),
                buildCustomButton(
                  context: context,
                  text:"jjjjjjj",
                  //AppLocalizations.of(context)!.verify,
                  backgroundColor: ColorManager.primaryColor,
                  onPressed: () {
                    _showSuccessDialog(context);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
