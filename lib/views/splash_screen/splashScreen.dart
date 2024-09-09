
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sample_project/views/signin_screen/signin_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  // void initState() {
  //   super.initState();

  //   // Start the timer for 3 seconds
  //   Timer(const Duration(seconds: 3), () {
  //     // Navigate to the next screen (e.g., HomeScreen)
  //     Navigator.pushReplacement(
  //         context, MaterialPageRoute(builder: (context) => SignInScreen()));
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedSplashScreen(splash: Center(
          child: Container(child: Lottie.asset("lib/assets/—Pngtree—school kids going to waving_14883039.png")),
        ),nextScreen:SignInScreen() , 
        splashIconSize: 100,
        // duration: 3000,
        )
      ),
    );
  }
}
