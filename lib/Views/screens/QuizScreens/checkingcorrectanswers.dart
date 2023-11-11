import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizapp/Views/screens/QuizScreens/questiondata.dart';
import 'package:quizapp/constants/colors.dart';
import 'package:quizapp/constants/textstylehelper1.dart';

class CheckingCorrectAnswers extends StatefulWidget {
  const CheckingCorrectAnswers({Key? key}) : super(key: key);

  @override
  State<CheckingCorrectAnswers> createState() => _CheckingCorrectAnswersState();
}

class _CheckingCorrectAnswersState extends State<CheckingCorrectAnswers> {
  final PageController _pageController = PageController();
  int currentPage = 0;
  int? selectedRadio;
  final _opacity = 0.8;
  final _xOffset = 0.0;
  final _yOffset = 3.0;
  final _blurRadius = 10.0;
  final _spreadRadius = 0.0;
  late bool isSubscribed;

  @override
  void initState() {
    super.initState();

    _pageController.addListener(() {
      setState(() {
        currentPage = _pageController.page?.toInt() ?? 0;
      });
      selectedRadio = null;
    });
    isSubscribed = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyCustomColors().kPrimaryColor3,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: MyCustomColors().kPrimaryColor3,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 70),
              child: SizedBox(
                width: 171.w,
                height: 8.h,
                child: LinearProgressIndicator(
                  value: (currentPage + 1) / questions.length,
                  valueColor: AlwaysStoppedAnimation<Color>(
                      MyCustomColors().kSecondaryColor),
                  backgroundColor: MyCustomColors().kWhiteColor3,
                ),
              ),
            ),
            const Spacer(),
            Container(
              width: 47.w,
              height: 37.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: MyCustomColors().kWhiteColor,
              ),
              child: Center(
                child: TextStyleHelper().mytext(
                  '${currentPage + 1}/${questions.length}',
                  16.sp,
                  FontWeight.w500,
                  MyCustomColors().kBlackColor,
                ),
              ),
            ),
          ],
        ),
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
        child: PageView.builder(
          controller: _pageController,
          itemCount: questions.length,
          physics: const NeverScrollableScrollPhysics(),
          onPageChanged: (index) {
            setState(() {
              currentPage = index;
            });
          },
          itemBuilder: (context, index) {
            final question = questions[index];

            return Padding(
              padding: const EdgeInsets.only(left: 10, top: 20, right: 10).r,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TextStyleHelper().mytext(
                      "Question #${index + 1}",
                      20,
                      FontWeight.w500,
                      MyCustomColors().kBlackColor2,
                    ),
                    const SizedBox(height: 10),
                    TextStyleHelper().mytext(
                      question.question,
                      20,
                      FontWeight.w500,
                      MyCustomColors().kBlackColor,
                    ),
                    const SizedBox(height: 10),
                    // Radio buttons here

                    Row(
                      children: [
                        Radio(
                          activeColor: MyCustomColors().kPrimaryColor,
                          value: 1,
                          groupValue: selectedRadio,
                          onChanged: (value) {
                            setState(() {
                              selectedRadio = value;
                              _showMasteredBottomSheet(
                                  context); // Show bottom sheet
                            });
                          },
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedRadio = 1;
                              _showMasteredBottomSheet(
                                  context); // Show bottom sheet
                            });
                          },
                          child: TextStyleHelper().mytext(
                            'Mark as Mastered',
                            14,
                            FontWeight.w400,
                            selectedRadio == 1
                                ? MyCustomColors().kPrimaryColor
                                : MyCustomColors().kBlackColor1,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                          activeColor: MyCustomColors().kPrimaryColor,
                          value: 2,
                          groupValue: selectedRadio,
                          onChanged: (value) {
                            setState(() {
                              selectedRadio = value;
                            });
                          },
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedRadio = 2;
                            });
                          },
                          child: TextStyleHelper().mytext(
                            'Retake Later',
                            14,
                            FontWeight.w400,
                            selectedRadio == 2
                                ? MyCustomColors().kPrimaryColor
                                : MyCustomColors().kBlackColor1,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    TextStyleHelper().mytext(
                      'Selected Answer',
                      16,
                      FontWeight.w500,
                      MyCustomColors().kBlackColor2,
                    ),
                    Container(
                      width: 388.w,
                      height: 50.h,
                      margin: EdgeInsets.only(top: 10.h),
                      child: TextFormField(
                        enableInteractiveSelection: false,
                        initialValue: question.selectedOption,
                        readOnly: true,
                        style: question.isAnswerCorrect
                            ? TextStyle(
                                color: MyCustomColors().kTrueColor,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w700)
                            : TextStyle(
                                color: MyCustomColors().kFalseColor,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w700),
                        decoration: InputDecoration(
                          suffixIcon: question.isAnswerCorrect
                              ? const Icon(Icons.check, color: Colors.green)
                              : const Icon(Icons.close, color: Colors.red),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.w),
                            borderSide:
                                BorderSide(color: MyCustomColors().kFalseColor),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.w),
                          ),
                          contentPadding: EdgeInsets.all(10.w),
                        ),
                      ),
                    ),
                    SizedBox(height: 30.h),
                    TextStyleHelper().mytext(
                      'Correct Answer',
                      16,
                      FontWeight.w500,
                      MyCustomColors().kBlackColor2,
                    ),
                    Container(
                      width: 388.w,
                      height: 50.h,
                      margin: EdgeInsets.only(top: 10.h),
                      child: TextFormField(
                        enableInteractiveSelection: false,
                        initialValue: question.correctAnswer,
                        readOnly: true,
                        style: TextStyle(
                            color: MyCustomColors().kWhiteColor1,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor:
                              MyCustomColors().kTrueFillColor.withOpacity(0.8),
                          suffixIcon: Icon(Icons.check,
                              color: MyCustomColors().kWhiteColor),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10).r,
                            borderSide:
                                BorderSide(color: MyCustomColors().kFalseColor),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          contentPadding: EdgeInsets.all(10.r),
                        ),
                      ),
                    ),

                    SizedBox(height: 20.h),
                    TextStyleHelper().mytext(
                      'Explanation',
                      16,
                      FontWeight.w500,
                      MyCustomColors().kBlackColor2,
                    ),
                    _buildExplanationText(question, isSubscribed),

                    SizedBox(height: 20.h),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if (currentPage == 0)
                          Container(
                            width: 48.w,
                            height: 48.h,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: currentPage == 1
                                  ? MyCustomColors().kPrimaryColor1
                                  : MyCustomColors().kWhiteColor4,
                            ),
                            child: IconButton(
                              onPressed: () {
                                if (currentPage > 0) {
                                  _pageController.previousPage(
                                    duration: const Duration(milliseconds: 500),
                                    curve: Curves.easeInOut,
                                  );
                                }
                              },
                              icon: Icon(
                                Icons.arrow_back,
                                color: MyCustomColors().kWhiteColor,
                              ),
                            ),
                          ),
                        if (currentPage > 0)
                          Container(
                            width: 48.w,
                            height: 48.h,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: currentPage == 1
                                  ? MyCustomColors().kPrimaryColor1
                                  : MyCustomColors().kPrimaryColor1,
                            ),
                            child: IconButton(
                              onPressed: () {
                                if (currentPage > 0) {
                                  _pageController.previousPage(
                                    duration: const Duration(milliseconds: 500),
                                    curve: Curves.easeInOut,
                                  );
                                }
                              },
                              icon: Icon(
                                Icons.arrow_back,
                                color: MyCustomColors().kWhiteColor,
                              ),
                            ),
                          ),
                        SizedBox(width: 50.w),
                        Container(
                          width: 48.w,
                          height: 48.h,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: currentPage == questions.length - 1
                                ? MyCustomColors().kWhiteColor4
                                : MyCustomColors().kPrimaryColor1,
                          ),
                          child: IconButton(
                            onPressed: () {
                              if (currentPage < questions.length - 1) {
                                _pageController.nextPage(
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.easeInOut,
                                );
                              }
                            },
                            icon: Icon(
                              Icons.arrow_forward,
                              color: MyCustomColors().kWhiteColor,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildExplanationText(QuestionData question, bool isSubscribed) {
    if (isSubscribed) {
      return Container(
        width: 428.w,
        height: 154.h,
        margin: EdgeInsets.symmetric(vertical: 10.h),
        decoration: BoxDecoration(
          color: MyCustomColors().kWhiteColor,
          borderRadius: BorderRadius.circular(10.w),
        ),
        child: ListView(
          padding: EdgeInsets.all(20.w),
          children: [
            Text(
              question.explanation,
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                color: MyCustomColors().kBlackColor1,
              ),
            ),
          ],
        ),
      );
    } else {
      return Container(
        width: 428.w,
        height: 154.h,
        margin: EdgeInsets.symmetric(vertical: 10.h),
        decoration: BoxDecoration(
          color: MyCustomColors().kWhiteColor,
          borderRadius: BorderRadius.circular(10.w),
        ),
        child: ClipRect(
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  width: 388.w,
                  height: 297.h,
                  padding: EdgeInsets.all(20.w),
                  child: ListView(
                    children: [
                      Text(
                        question.explanation,
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: MyCustomColors().kBlackColor1,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 4.0),
                  child: Container(
                    width: 47.w,
                    height: 47.h,
                    decoration: BoxDecoration(
                      color: MyCustomColors().kSecondaryColor,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Image.asset(
                        'assets/images/lock.png',
                        width: 17.9.w,
                        height: 22.38.h,
                        color: MyCustomColors().kWhiteColor,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }
  }

  void _showMasteredBottomSheet(BuildContext context) {
    showModalBottomSheet(
      isDismissible: false,
      // isDismissible: false,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.all(20.0).r,
          child: Wrap(
            children: [
              Center(
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        decoration: BoxDecoration(
                          color: MyCustomColors().kWhiteColor,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: MyCustomColors()
                                  .kBlackColor8
                                  .withOpacity(_opacity),
                              offset: Offset(_xOffset, _yOffset),
                              blurRadius: _blurRadius,
                              spreadRadius: _spreadRadius,
                            )
                          ],
                        ),
                        width: 23.81.w,
                        height: 24.h,
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: SizedBox(
                            width: 8.33.w,
                            height: 8.4.h,
                            child: Icon(
                              Icons.close,
                              color: MyCustomColors().kBlackColor8,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                        width: 46.02.w,
                        height: 46.01.h,
                        child: Image.asset('assets/images/masterquestion.png')),
                    SizedBox(
                      height: 20.h,
                    ),
                    TextStyleHelper().mytext('Question Mastered', 20.sp,
                        FontWeight.w500, MyCustomColors().kPrimaryColor),
                    SizedBox(
                      height: 10.h,
                    ),
                    TextStyleHelper().mytext(
                        'This question will be showed less frequently',
                        12.sp,
                        FontWeight.w400,
                        MyCustomColors().kBlackColor1),
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
