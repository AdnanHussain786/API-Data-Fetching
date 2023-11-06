import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizapp/Views/screens/QuizScreens/attemptingquiz.dart';
import 'package:quizapp/constants/colors.dart';
import 'package:quizapp/constants/textstylehelper1.dart';

class QuizLoadingScreen extends StatefulWidget {
  const QuizLoadingScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _QuizLoadingScreenState createState() => _QuizLoadingScreenState();
}

class _QuizLoadingScreenState extends State<QuizLoadingScreen> {
  double progressValue = 0.0;

  @override
  void initState() {
    super.initState();
    // Start a timer to simulate progress.
    Timer.periodic(const Duration(milliseconds: 500), (timer) {
      setState(() {
        // Update the progress value. You can change this value to control the filling speed.
        progressValue += 0.1;
        if (progressValue >= 1.0) {
          // When the progress is complete, navigate to the next screen.
          timer.cancel();
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => const AttemptingQuizScreen(),
          ));
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyCustomColors().kPrimaryColor2, // Background color
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/img1.png', // Replace with your image path
              width: 178.w, // Adjust the width as needed
              height: 178.h, // Adjust the height as needed
            ),
            SizedBox(height: 20.h), // Add some spacing
            Container(
              width: 122.w,
              height: 8.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
              ),
              child: LinearProgressIndicator(
                backgroundColor:
                    MyCustomColors().kWhiteColor3, // Background color
                value: progressValue,
                valueColor: AlwaysStoppedAnimation<Color>(
                  MyCustomColors().kPrimaryColor1, // Customize the color
                ),
              ),
            ),
            SizedBox(height: 300.h), // Add some spacing

            // Animated text with dots
            const AnimatedDotsText(),
          ],
        ),
      ),
    );
  }
}

class AnimatedDotsText extends StatefulWidget {
  const AnimatedDotsText({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AnimatedDotsTextState createState() => _AnimatedDotsTextState();
}

class _AnimatedDotsTextState extends State<AnimatedDotsText> {
  int numDots = 1;

  @override
  void initState() {
    super.initState();

    Timer.periodic(const Duration(milliseconds: 500), (timer) {
      setState(() {
        numDots = (numDots % 3) + 1;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextStyleHelper().mytext('Please wait', 18.sp, FontWeight.w400,
            MyCustomColors().kWhiteColor3),
        SizedBox(width: 5.w),
        for (int i = 0; i < numDots; i++)
          TextStyleHelper().mytext(
              '.', 18.sp, FontWeight.w400, MyCustomColors().kWhiteColor3),
      ],
    );
  }
}
