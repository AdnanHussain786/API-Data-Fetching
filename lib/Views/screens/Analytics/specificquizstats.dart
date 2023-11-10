import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizapp/Views/screens/QuizScreens/quizdetails.dart';
import 'package:quizapp/Views/screens/home/specific_category.dart';
import 'package:quizapp/constants/colors.dart';
import 'package:quizapp/constants/textstylehelper1.dart';

class SpecificQuizStats extends StatefulWidget {
  const SpecificQuizStats({super.key});

  @override
  State<SpecificQuizStats> createState() => _SpecificQuizStatsState();
}

class _SpecificQuizStatsState extends State<SpecificQuizStats> {
  List<Color> containerColors = [
    const Color(0xffFFA800),
    const Color(0xffAB0BC5),
    const Color(0xff29BFFF),
    const Color(0xffEA5455),
    const Color(0xff082A6F),
    const Color(0xff01AB1C) // Add more colors as needed
  ];
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
                    final containerColor =
                        containerColors[index % containerColors.length];

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
                height: 100.h,
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
