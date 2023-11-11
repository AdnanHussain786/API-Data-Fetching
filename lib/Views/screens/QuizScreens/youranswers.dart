import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizapp/Views/screens/QuizScreens/questiondata.dart';
import 'package:quizapp/constants/colors.dart';
import 'package:quizapp/constants/quizscreenscontainersdata.dart';
import 'package:quizapp/constants/textstylehelper1.dart';

class YourAnswersScreen extends StatefulWidget {
  final List<QuestionData> questions;
  const YourAnswersScreen({super.key, required this.questions});

  @override
  State<YourAnswersScreen> createState() => _YourAnswersScreenState();
}

class _YourAnswersScreenState extends State<YourAnswersScreen> {
  final quizscreencontainersdata = QuizScreensContainersData();

  // Define the number of correct answers here
  int correctAnswers = 0;
  @override
  void initState() {
    super.initState();
    correctAnswers =
        widget.questions.where((question) => question.isAnswerCorrect).length;
  }

  @override
  Widget build(BuildContext context) {
    double scorePercentage =
        (widget.questions.where((q) => q.isAnswerCorrect).length /
                widget.questions.length)
            .toDouble();

    return Scaffold(
      backgroundColor: MyCustomColors().kPrimaryColor3,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: MyCustomColors().kPrimaryColor3,
        title: TextStyleHelper().mytext(
          'Your Answers',
          18.sp,
          FontWeight.w500,
          MyCustomColors().kWhiteColor,
        ),
        centerTitle: true,
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: const Icon(Icons.arrow_back_ios),
        ),
        iconTheme: IconThemeData(color: MyCustomColors().kWhiteColor),
      ),
      body: Container(
        decoration: BoxDecoration(
            // border: Border.all(
            //     color: MyCustomColors().kWhiteColor,
            //     strokeAlign: 0,
            //     width: 0.w),
            color: MyCustomColors().kWhiteColor,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(24),
              topRight: Radius.circular(24),
            )),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextStyleHelper().mytext('Quiz', 20.sp, FontWeight.w700,
                          MyCustomColors().kBlackColor),
                      SizedBox(
                        height: 10.h,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: quizscreencontainersdata.containerColors[0],
                          borderRadius: BorderRadius.all(Radius.circular(10.w)),
                        ),
                        child: Container(
                          margin: EdgeInsets.only(right: 2.w, bottom: 2.h),
                          child: Stack(
                            alignment: Alignment.topRight,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.w)),
                                ),
                                height: 90.h,
                                width: 171.w,
                                child: ClipRRect(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15)),
                                  child: Image.asset(
                                    'assets/images/Rectangle1.png',
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                  vertical: 5.h,
                                  horizontal: 10.w,
                                ),
                                decoration: BoxDecoration(
                                  color: quizscreencontainersdata
                                      .containerColors[0],
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(20.w),
                                    topRight: Radius.circular(10.w),
                                  ),
                                ),
                                child: Text(
                                  "18 Characters",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .copyWith(
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                        fontSize: 10.sp,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      TextStyleHelper().mytext(
                        'Microprocessor in\nComputer Science',
                        14.sp,
                        FontWeight.w500,
                        MyCustomColors().kBlackColor,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Container(
                        color: Colors.transparent,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(4.w),
                              child: TextStyleHelper().mytext(
                                '2 Days ago',
                                10.sp,
                                FontWeight.w700,
                                MyCustomColors().kBlackColor3,
                              ),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Center(
                              child: Container(
                                padding: EdgeInsets.all(4.w),
                                decoration: BoxDecoration(
                                  color: quizscreencontainersdata
                                      .containerColors[0],
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15.w)),
                                ),
                                child: TextStyleHelper().mytext(
                                  '3.2K Plays',
                                  10.sp,
                                  FontWeight.w700,
                                  MyCustomColors().kWhiteColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 30.w,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 70),
                        child: TextStyleHelper().mytext(
                          'Score',
                          20.sp,
                          FontWeight.w700,
                          MyCustomColors().kBlackColor,
                        ),
                      ),
                      // Circular Progress Indicator
                      SizedBox(
                        height: 20.h,
                      ),
                      SizedBox(
                        width: 140.w,
                        height: 140.h,
                        child: Stack(
                          children: [
                            SizedBox(
                              width: 140.w,
                              height: 140.h,
                              child: CircularProgressIndicator(
                                backgroundColor: MyCustomColors()
                                    .kPrimaryColor1
                                    .withOpacity(0.2),
                                value: scorePercentage,
                                strokeWidth: 12.0,
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  MyCustomColors().kPrimaryColor1,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 20),
                              child: Center(
                                child: TextStyleHelper().mytext(
                                  '$correctAnswers pts',
                                  24.sp,
                                  FontWeight.w500,
                                  MyCustomColors().kBlackColor,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 30),
                              child: Center(
                                child: TextStyleHelper().mytext(
                                  '$correctAnswers/${questions.length}',
                                  12.sp,
                                  FontWeight.w500,
                                  MyCustomColors().kBlackColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              TextStyleHelper().mytext(
                'Your Answers',
                20.sp,
                FontWeight.w700,
                MyCustomColors().kBlackColor,
              ),
              SizedBox(
                height: 10.h,
              ),
              // Question List
              Expanded(
                child: ListView.builder(
                  itemCount: questions.length,
                  itemBuilder: (context, index) {
                    final question = questions[index];

                    return ListTile(
                      leading: Container(
                        height: 29.h,
                        width: 29.h,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: MyCustomColors().kPrimaryColor2,
                        ),
                        child: Center(
                          child: TextStyleHelper().mytext('${index + 1}', 20.sp,
                              FontWeight.w700, MyCustomColors().kWhiteColor),
                        ),
                      ),
                      title: TextStyleHelper().mytext(
                        question.question,
                        14.sp,
                        FontWeight.w500,
                        MyCustomColors().kBlackColor,
                      ),
                      trailing: question.isAnswerCorrect
                          ? const Icon(Icons.check, color: Colors.green)
                          : const Icon(Icons.close, color: Colors.red),
                    );
                    // You can add options here if needed
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
