import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizapp/Views/User/profile/bank_details_screen.dart';
import 'package:quizapp/constants/constants.dart';

class MonthlyPlanScreen extends StatefulWidget {
  const MonthlyPlanScreen({super.key});

  @override
  State<MonthlyPlanScreen> createState() => _MonthlyPlanScreenState();
}

class _MonthlyPlanScreenState extends State<MonthlyPlanScreen> {
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Pick your plan',
                  style: GoogleFonts.dmSans(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selected = 0;
                    });
                  },
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 30.w, vertical: 40.h),
                    decoration: BoxDecoration(
                      color: selected == 0
                          ? Color(0xff064DAE).withOpacity(0.15)
                          : Colors.white,
                      borderRadius: BorderRadius.circular(12.r),
                      border: Border.all(
                        color: selected == 0
                            ? Color(0xff064DAE)
                            : Colors.black.withOpacity(0.1),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Standard',
                          style: GoogleFonts.dmSans(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff0D0D0D),
                          ),
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              '5.12\$',
                              style: GoogleFonts.dmSans(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff0D0D0D),
                              ),
                            ),
                            Text(
                              '/month',
                              style: GoogleFonts.dmSans(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff0D0D0D),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 20.w,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selected = 1;
                    });
                  },
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 30.w, vertical: 40.h),
                    decoration: BoxDecoration(
                      color: selected == 1
                          ? Color(0xff064DAE).withOpacity(0.15)
                          : Colors.white,
                      borderRadius: BorderRadius.circular(12.r),
                      border: Border.all(
                        color: selected == 1
                            ? Color(0xff064DAE)
                            : Colors.black.withOpacity(0.1),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Premium',
                          style: GoogleFonts.dmSans(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff0D0D0D),
                          ),
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              '12.12\$',
                              style: GoogleFonts.dmSans(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff0D0D0D),
                              ),
                            ),
                            Text(
                              '/month',
                              style: GoogleFonts.dmSans(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff0D0D0D),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 90.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildRow('No Ads'),
                  SizedBox(
                    height: 20.h,
                  ),
                  buildRow('No Quiz Limits'),
                  SizedBox(
                    height: 20.h,
                  ),
                  buildRow('Quiz Print'),
                  SizedBox(
                    height: 20.h,
                  ),
                  buildRow('Answer Explanation'),
                  SizedBox(
                    height: 20.h,
                  ),
                  buildRow('Historical Statistics'),
                ],
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            kBigButton(
              text: "Purchase Now",
              onPressed: () {
                Get.to(() => BankDetailsScreen());
              },
            )
          ],
        ),
      ),
    );
  }

  Row buildRow(text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(
          Icons.check_circle,
          color: const Color(0xff05ADEE),
          size: 27.sp,
        ),
        SizedBox(
          width: 10.w,
        ),
        Text(
          text,
          style: GoogleFonts.dmSans(
            fontSize: 14.sp,
            fontWeight: FontWeight.w700,
            color: Color(0xff3B3B3B),
          ),
        ),
      ],
    );
  }
}
