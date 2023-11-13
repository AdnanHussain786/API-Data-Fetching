import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizapp/Views/User/home/specific_category.dart';
import 'package:quizapp/constants/colors.dart';
import 'package:quizapp/constants/quizscreenscontainersdata.dart';
import 'package:quizapp/constants/textstylehelper1.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class SpecificQuizStats extends StatefulWidget {
  const SpecificQuizStats({super.key});

  @override
  State<SpecificQuizStats> createState() => _SpecificQuizStatsState();
}

class ChartData {
  ChartData(this.x, this.high, this.low);
  final String x;
  final double high;
  final double low;
}

class _SpecificQuizStatsState extends State<SpecificQuizStats> {
  final quizscreencontainerdata = QuizScreensContainersData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        title: TextStyleHelper().mytext('Quiz Analytics', 18.sp,
            FontWeight.w500, MyCustomColors().kBlackColor),
        centerTitle: true,
        leading: InkWell(
            onTap: () => Navigator.pop(context),
            child: const Icon(Icons.arrow_back_ios)),
        iconTheme: IconThemeData(color: MyCustomColors().kBlackColor),
      ),
      body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 1, // Iterate 5 times
                  itemBuilder: (context, index) {
                    final containerColor = quizscreencontainerdata
                            .containerColors[
                        index % quizscreencontainerdata.containerColors.length];

                    return Padding(
                      padding: const EdgeInsets.only(left: 10).w,
                      child: QuizzCategoryWidget(
                        title: 'Microprocessor in computer Science',
                        timeAgoText: 'You played 2 days ago',
                        containerColor: containerColor,
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                height: 180.h,
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
                        ChartData('correct', 0, 15),
                        ChartData('incorrect', 0, 20),
                        ChartData('unanswered', 0, 9),
                        ChartData('mastered', 0, 5),
                      ],
                      xValueMapper: (ChartData data, _) => data.x,
                      lowValueMapper: (ChartData data, _) => data.low,
                      highValueMapper: (ChartData data, _) => data.high,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 50.h,
              ),
              Center(
                child: Text(
                  'Reset Statistics',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: MyCustomColors().kRedColor,
                      decoration: TextDecoration.underline),
                ),
              )
            ],
          )),
    );
  }
}
