import 'package:flutter/material.dart';
import 'package:gym_app/utills/colors.dart';
import 'package:gym_app/utills/components.dart';
import 'package:gym_app/view/auth/forgot_password.dart';
import 'package:gym_app/view/auth/login_screen.dart';
import 'package:gym_app/view/home/home.dart';

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
                  'SYSTEM GYM',
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
                      hintText: 'Email',
                      prefixIcon: Icons.email,
                    ),
                    SizedBox(height: 16,),
                    CustomTextField(
                      hintText: '@username',
                      prefixIcon: Icons.email,
                    ),
                    SizedBox(height: 16,),
                    CustomTextField(
                      hintText: 'Club name',
                      prefixIcon: Icons.email,
                    ),
                    SizedBox(height: 16),

                    CustomTextField(
                      hintText: 'your email',
                      prefixIcon: Icons.lock,
                      isPassword: true,
                    ),
                  ],
                ),
                SizedBox(height: 16,),
                buildDropdownButton
                  (hint: 'Subscription period',),

                SizedBox(height: 16),
                buildCustomButton(
                    context: context,
                    text:"Sign in",
                    //AppLocalizations.of(context)!.getStarted,
                    backgroundColor: ColorManager.primaryColor,
                    onPressed: (){
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => HomeScreen()),
                      );
                    }),
                SizedBox(height: 16),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "If you have an account? ",
                      style: TextStyle(color: Colors.white),
                    ),
                    GestureDetector(
                      onTap: () {
                      },
                      child: Text(
                        'Sign Up here',
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


