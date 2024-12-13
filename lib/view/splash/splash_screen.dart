
import 'package:flutter/material.dart';
import 'package:gym_app/view/on_pording/on_pording_screen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {

        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) =>  OnBoardingScreen()),
        );


    });
  }
  @override
  void dispose() {


    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/image/FcLyt7lW5wg (1).jpg",
              width: double.infinity,height: 608,),
          ],
        ),
      ),
    );
  }
}