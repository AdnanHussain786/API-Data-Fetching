import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizapp/Views/Admin/bottombar/admin_navigation_bar.dart';
import 'package:quizapp/constants/bottom_navigation_bar.dart';
import 'package:quizapp/constants/constants.dart';

class TemporaryScreen extends StatefulWidget {
  const TemporaryScreen({super.key});

  @override
  State<TemporaryScreen> createState() => _TemporaryScreenState();
}

class _TemporaryScreenState extends State<TemporaryScreen> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 50.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Temporary Screen',
                    style: GoogleFonts.dmSans(
                      textStyle: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    )),
              ],
            ),
            SizedBox(
              height: 115.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('This is temporary screen for testing',
                    style: GoogleFonts.dmSans(
                      textStyle: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    )),
              ],
            ),
            SizedBox(
              height: 100.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Select your role',
                    style: GoogleFonts.dmSans(
                      textStyle: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    )),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 90.w),
              child: kBigButton(
                text: 'User',
                onPressed: () {
                  Get.to(() => const CustomBottomNavigationBar(),
                      transition: Transition.fadeIn);
                },
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 90.w),
              child: kBigButton(
                text: 'Admin',
                onPressed: () {
                  Get.to(() => const AdminBottomBar(),
                      transition: Transition.fadeIn);
                },
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
          ],
        ),
      ),
    );
  }
}
