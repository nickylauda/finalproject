import 'package:flutter/material.dart';
import 'package:my_bucket/onboard_splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SplashScreens(),
      debugShowCheckedModeBanner: false,
      //theme: ThemeData(textTheme: GoogleFonts.montserratTextTheme()),
    );
  }
}
