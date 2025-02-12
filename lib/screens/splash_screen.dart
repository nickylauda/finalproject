import 'package:flutter/material.dart';
import 'package:my_bucket/screens/on_board_screen.dart';

class SplashScreens extends StatefulWidget {
  const SplashScreens({super.key});

  @override
  State<SplashScreens> createState() => _SplashScreensState();
}

class _SplashScreensState extends State<SplashScreens> {
  @override
  void initState() {
    super.initState();
    navigateHome();
  }

  Future<void> navigateHome() async {
    await Future.delayed(const Duration(milliseconds: 3600));
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const OnboardingScreen()));
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              // colors: [
              //   Color(0xFFff7e5f), // Start color: Warm pink
              //   Color(0xFFfeb47b), // End color: Peachy orange
              // ],
              // begin: Alignment.topCenter,
              // end: Alignment.bottomCenter,
              colors: [
                Colors.blue.shade900, // Darker shade
                Colors.blue.shade400, // Medium shade
                Colors.blue.shade200, // Lighter shade
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/splashscreen.png', // Add your image to assets
                  width: size.width * 0.9,
                  height: size.height * 0.9,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
