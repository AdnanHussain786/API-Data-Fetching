import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:quizapp/Views/Admin/bottombar/admin_navigation_bar.dart';
import 'package:quizapp/Views/User/mainScreens/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Initialize flutter_screenutil
    ScreenUtil.init(
      context,
      designSize: const Size(375, 812), // Design size of your choice (iPhone X)
      minTextAdapt: true,
    );

    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
