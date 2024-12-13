import 'package:flutter/material.dart';
import 'package:gym_app/utills/colors.dart';
import 'package:gym_app/utills/components.dart';
import 'package:gym_app/view/auth/login_screen.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/image/FcLyt7lW5wg (1).jpg'),
                fit: BoxFit.cover,
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
                    SizedBox(height: 16),

                    CustomTextField(
                      hintText: 'Password',
                      prefixIcon: Icons.lock,
                      isPassword: true,
                    ),
                  ],
                ),

                SizedBox(height: 10),
                Align(
                  alignment: Alignment.center,
                  child: TextButton(
                    onPressed: () {

                    },
                    child: Text(
                      'Forgot Password',
                      style: TextStyle(color: Colors.white,
                        fontSize: 16,fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                SizedBox(height: 16),
                buildCustomButton(
                    context: context,
                    text:"Sign in",
                    //AppLocalizations.of(context)!.getStarted,
                    backgroundColor: ColorManager.primaryColor,
                    onPressed: (){
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    }),
                SizedBox(height: 16),
                // رابط إنشاء حساب
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Didn't have any account? ",
                      style: TextStyle(color: Colors.white),
                    ),
                    GestureDetector(
                      onTap: () {
                        // التنقل إلى شاشة إنشاء حساب
                      },
                      child: Text(
                        'Sign Up here',
                        style: TextStyle(
                          color: Colors.yellow,
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


