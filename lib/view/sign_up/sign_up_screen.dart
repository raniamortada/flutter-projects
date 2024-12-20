import 'package:flutter/material.dart';
import 'package:gym_app/utills/colors.dart';
import 'package:gym_app/utills/components.dart';
import 'package:gym_app/view/auth/forgot_password.dart';
import 'package:gym_app/view/auth/login_screen.dart';
import 'package:gym_app/view/home/home.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart'; // Add this import

class SignUpScreen extends StatefulWidget {
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  AppLocalizations.of(context)!.systemGym, // Use translated string
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 32),
                Column(
                  children: [
                    CustomTextField(
                      hintText: AppLocalizations.of(context)!.email, // Use translated string
                      prefixIcon: Icons.email,
                    ),
                    SizedBox(height: 16),
                    CustomTextField(
                      hintText: '@${AppLocalizations.of(context)!.username}', // Use translated string
                      prefixIcon: Icons.email,
                    ),
                    SizedBox(height: 16),
                    CustomTextField(
                      hintText: AppLocalizations.of(context)!.clubName, // Use translated string
                      prefixIcon: Icons.email,
                    ),
                    SizedBox(height: 16),
                    CustomTextField(
                      hintText: AppLocalizations.of(context)!.yourEmail, // Use translated string
                      prefixIcon: Icons.lock,
                      isPassword: true,
                    ),
                  ],
                ),
                SizedBox(height: 16),
                buildDropdownButton(
                  hint: AppLocalizations.of(context)!.subscriptionPeriod, // Use translated string
                  imag: 'assets/SVG/images/ico.svg',
                ),
                SizedBox(height: 16),
                buildCustomButton(
                  context: context,
                  text: AppLocalizations.of(context)!.signIn, // Use translated string
                  backgroundColor: ColorManager.primaryColor,
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                    );
                  },
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      AppLocalizations.of(context)!.ifYouHaveAnAccount, // Use translated string
                      style: TextStyle(color: Colors.white),
                    ),
                    GestureDetector(
                      onTap: () {
                        // Handle tap
                      },
                      child: Text(
                        AppLocalizations.of(context)!.signUpHere, // Use translated string
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
