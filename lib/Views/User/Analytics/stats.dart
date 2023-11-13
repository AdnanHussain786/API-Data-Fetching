import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizapp/Views/User/Analytics/specificquizstats.dart';
import 'package:quizapp/Views/User/home/specific_category.dart';
import 'package:quizapp/constants/bottom_navigation_bar.dart';
import 'package:quizapp/constants/colors.dart';
import 'package:quizapp/constants/quizscreenscontainersdata.dart';
import 'package:quizapp/constants/textstylehelper1.dart';

import 'package:syncfusion_flutter_charts/charts.dart';

class StatsScreen extends StatefulWidget {
  const StatsScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _StatsScreenState createState() => _StatsScreenState();
}

class ChartData {
  ChartData(this.x, this.high, this.low);
  final String x;
  final double high;
  final double low;
}

class _StatsScreenState extends State<StatsScreen> {
  final quizscreencontainerdata = QuizScreensContainersData();

  TextEditingController searchController = TextEditingController();
  // For the first ListView

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: TextStyleHelper().mytext(
              'Analytics', 20, FontWeight.w500, MyCustomColors().kBlackColor),
          leadingWidth: 70.w,
          toolbarHeight: 59.h,
          leading: Center(
            child: SizedBox(
              width: 58.w, // Increase the width
              height: 59.h,
              // Increase the height
              child: Image.asset(
                'assets/images/img1.png',
                fit: BoxFit.contain,
              ),
            ),
          ),
          shadowColor: Colors.transparent,
          backgroundColor: Colors.transparent,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15, top: 15).r,
              child: Stack(
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
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20).w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30.h,
                ),
                TextStyleHelper().mytext('Questions Taken by categories', 20,
                    FontWeight.w700, MyCustomColors().kBlackColor),
                SizedBox(
                  height: 10.h,
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  children: [
                    TextStyleHelper().mytext('Last 15 days', 18.sp,
                        FontWeight.w700, MyCustomColors().kBlackColor1),
                    SizedBox(
                      width: 8.w,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.h),
                      child: SizedBox(
                          width: 10.w,
                          height: 6.h,
                          child: Image.asset('assets/images/downarrow.png')),
                    )
                  ],
                ),

                SizedBox(
                  height: 10.h,
                ),
                SizedBox(
                  height: 200.h,
                  child: SfCartesianChart(
                    plotAreaBorderWidth: 0,
                    primaryYAxis: NumericAxis(
                      majorTickLines: const MajorTickLines(width: 0),
                      axisLine: const AxisLine(width: 0),
                      minorGridLines: const MinorGridLines(width: 0),
                      majorGridLines: MajorGridLines(
                        width: 1.w,
                        dashArray: List<double>.from(<double>[5, 5]),
                        color: Colors.black.withOpacity(0.1),
                      ),
                      labelStyle: TextStyle(
                        color: Color(0xff000000).withOpacity(0.5),
                        fontSize: 12.sp,
                      ),
                    ),
                    backgroundColor: Colors.transparent,
                    primaryXAxis: CategoryAxis(
                      majorTickLines: const MajorTickLines(width: 0),
                      majorGridLines: const MajorGridLines(width: 0),
                      labelStyle: TextStyle(
                        color: Color(0xff000000).withOpacity(0.5),
                        fontSize: 12.sp,
                      ),
                      axisLine: const AxisLine(width: 0),
                      minorGridLines: const MinorGridLines(width: 0),
                    ),
                    series: <ChartSeries>[
                      RangeColumnSeries<ChartData, String>(
                        borderWidth: 0,
                        markerSettings: MarkerSettings(
                          isVisible: false,
                          color: Colors.white,
                          width: 0.w,
                          height: 0.h,
                        ),
                        color: Colors.amber,
                        pointColorMapper: (datum, index) {
                          return index % 2 == 0
                              ? Color(0xff0452B7)
                              : Color(0xff69936A);
                        },
                        width: 0.3.w,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15.r),
                          topRight: Radius.circular(15.r),
                        ),
                        dataSource: <ChartData>[
                          ChartData('computer', 0, 15),
                          ChartData('Chemistry', 0, 20),
                          ChartData('Math', 0, 9),
                          ChartData('Physics', 0, 9),
                        ],
                        xValueMapper: (ChartData data, _) => data.x,
                        lowValueMapper: (ChartData data, _) => data.low,
                        highValueMapper: (ChartData data, _) => data.high,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),

                TextStyleHelper().mytext(
                  'Quizzes Played',
                  20.sp,
                  FontWeight.w700,
                  MyCustomColors().kBlackColor,
                ),
                SizedBox(
                  height: 5.h,
                ),
                TextStyleHelper().mytext(
                  '03 Quizzes',
                  16.sp,
                  FontWeight.w500,
                  MyCustomColors().kBlackColor2,
                ),
                SizedBox(
                  height: 15.h,
                ),
                // Replace this SizedBox with the ListView
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SpecificQuizStats(),
                        ));
                  },
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 20, // Iterate 5 times
                    itemBuilder: (context, index) {
                      final containerColor =
                          quizscreencontainerdata.containerColors[index %
                              quizscreencontainerdata.containerColors.length];

                      return QuizzCategoryWidget(
                        title: 'Microprocessor in computer Science',
                        timeAgoText: 'You played 2 days ago',
                        containerColor: containerColor,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
