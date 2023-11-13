import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizapp/Views/Admin/Home/all_users.dart';
import 'package:quizapp/Views/Admin/Home/subscribers.dart';
import 'package:quizapp/constants/colors.dart';
import 'package:quizapp/constants/textstylehelper1.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class AdminHome extends StatefulWidget {
  const AdminHome({Key? key}) : super(key: key);

  @override
  State<AdminHome> createState() => _AdminHomeState();
}

class ChartData {
  ChartData(this.x, this.y);
  final int x;
  final double? y;
}

class _SalesData {
  _SalesData(this.year, this.sales);

  final String year;
  final double sales;
}

class _AdminHomeState extends State<AdminHome> {
  List<String> icons = [
    'assets/images/dollar.png',
    'assets/images/categories.png',
    'assets/images/quiz_green.png',
    'assets/images/users.png',
    'assets/images/active_user.png',
  ];

  List<Color> colors = [
    Color(0xff7367F0).withOpacity(0.12),
    Color(0xffFF9F43).withOpacity(0.12),
    Color(0xff178582).withOpacity(0.12),
    Color(0xffFF00D6).withOpacity(0.12),
    Color(0xffF1416C).withOpacity(0.12),
  ];

  List<String> titles = [
    'Paid User',
    'Total Categories',
    'Total Quizzes',
    'Total Users',
    'Active Users',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: EdgeInsets.only(left: 14.w, top: 5.h),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 14.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 50.w,
                        height: 50.h,
                        child: Image.asset('assets/images/img1.png'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 20.w),
                        child: Text(
                          'Admin Panel',
                          style: GoogleFonts.dmSans(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Stack(
                        alignment: Alignment.topRight,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: SizedBox(
                              width: 22.0.w,
                              height: 25.37.h,
                              child: Image.asset('assets/images/notify.png'),
                            ),
                          ),
                          Container(
                            width: 12.0.w,
                            height: 12.48.h,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: MyCustomColors()
                                  .kNotifyColor, // Notification badge color
                            ),
                            child: Center(
                              child: TextStyleHelper().mytext(
                                '4',
                                9.39.sp,
                                FontWeight.w700,
                                MyCustomColors().kWhiteColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                GridView.builder(
                    padding: EdgeInsets.only(right: 14.w),
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: colors.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 10,
                      childAspectRatio: 1.8,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {
                          if (index == 0) {
                            Get.to(
                              () => const SubscribersScreen(),
                            );
                          } else if (index == 3) {
                            Get.to(
                              () => const AllUsersScreen(),
                            );
                          }
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 0.w, vertical: 10.h),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.r),
                              color: Colors.white,
                              border: Border.all(
                                color: Colors.black.withOpacity(0.05),
                              )),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 10.w,
                              ),
                              Container(
                                padding: EdgeInsets.all(8.r),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: colors[index],
                                ),
                                child: Image.asset(
                                  icons[index],
                                  height: 20.h,
                                  width: 20.w,
                                  // colorFilter: ColorFilter.mode(
                                  //     Colors.black, BlendMode.srcIn),
                                ),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    titles[index],
                                    style: GoogleFonts.dmSans(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    '214',
                                    style: GoogleFonts.montserrat(
                                      fontSize: 30.sp,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  margin: EdgeInsets.only(right: 24.w),
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.r),
                    color: Colors.white,
                  ),
                  // height: 350.h,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10.w, top: 10.h),
                        child: Text(
                          'Earnings',
                          style: GoogleFonts.lexend(
                            fontSize: 19.sp,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      SfCartesianChart(
                        plotAreaBorderWidth: 0,
                        primaryYAxis: NumericAxis(
                          majorTickLines: const MajorTickLines(width: 0),
                          axisLine: const AxisLine(width: 0),
                          minorGridLines: const MinorGridLines(width: 0),
                          majorGridLines: MajorGridLines(
                            width: 1.w,
                            color: Colors.black.withOpacity(0.1),
                          ),
                          labelStyle: TextStyle(
                            color: const Color(0xff000000).withOpacity(0.5),
                            fontSize: 12.sp,
                          ),
                        ),
                        backgroundColor: Colors.white,
                        primaryXAxis: CategoryAxis(
                          majorTickLines: const MajorTickLines(width: 0),
                          majorGridLines: const MajorGridLines(width: 0),
                          labelStyle: TextStyle(
                            color: const Color(0xff000000).withOpacity(0.5),
                            fontSize: 12.sp,
                          ),
                          axisLine: const AxisLine(width: 0),
                          minorGridLines: const MinorGridLines(width: 0),
                        ),
                        series: <ChartSeries>[
                          SplineSeries<ChartData, dynamic>(
                              color: const Color(0xff064DAE),
                              width: 2.w,
                              dataSource: <ChartData>[
                                ChartData(25, 40),
                                ChartData(26, 55),
                                ChartData(27, 42),
                                ChartData(28, 35),
                                ChartData(29, 70),
                                ChartData(30, 90),
                              ],
                              xValueMapper: (ChartData data, _) => data.x,
                              yValueMapper: (ChartData data, _) => data.y)
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 100.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
