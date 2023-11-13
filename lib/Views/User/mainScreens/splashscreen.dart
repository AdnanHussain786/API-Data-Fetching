import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizapp/Views/auth/loginscreen.dart';
import 'package:quizapp/constants/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Simulate a three-second delay before navigating to the main screen.
    Timer(const Duration(seconds: 3), () {
      // Replace 'MainScreen()' with your main screen widget.
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (BuildContext context) => const LoginScreen(),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyCustomColors().kPrimaryColor2, // Background color
      body: Center(
        child: Image.asset(
          'assets/images/img1.png', // Replace with your image path
          width: 178.w, // Adjust the width as needed
          height: 178.h, // Adjust the height as needed
        ),
      ),
    );
  }
}
