import 'package:flutter/material.dart';
import 'package:gym_app/utills/colors.dart';
import 'package:gym_app/utills/components.dart';
import 'package:gym_app/view/auth/forgot_password.dart';
import 'package:gym_app/view/auth/verification.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;

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

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Text(
                  '${localizations.welcomeBack},\n SARAH',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.w700,
                      fontFamily: "Integral CF"
                  ),
                ),

                SizedBox(height: 32),

                Column(
                  children: [

                    InputFieldWidget(
                      label: localizations.email,
                    ),
                    const SizedBox(height: 20),
                    InputFieldWidget(
                      label: localizations.password,
                      isPassword: true,
                    ),
                  ],
                ),

                SizedBox(height: 10),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => ForgotPassword()),
                      );
                    },
                    child: Text(
                      localizations.forgotPassword,
                      style: TextStyle(color: ColorManager.primaryColor,
                          fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                SizedBox(height: 16),

                Row(mainAxisAlignment: MainAxisAlignment.end,
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
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => VerificationScreen()),
                          );
                        }
                    ),
                  ],
                ),
                SizedBox(height: 16),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      localizations.noAccount,
                      style: TextStyle(color: Colors.white),
                    ),
                    GestureDetector(
                      onTap: () {
                      },
                      child: Text(
                        localizations.signUpHere,
                        style: TextStyle(
                          color: ColorManager.primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 32),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
