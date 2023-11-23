import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizapp/Views/User/QuizScreens/answerbox.dart';
import 'package:quizapp/Views/User/QuizScreens/checkingcorrectanswers.dart';
import 'package:quizapp/Views/User/QuizScreens/lastquestion.dart';
import 'package:quizapp/Views/User/QuizScreens/questiondata.dart';
import 'package:quizapp/Views/User/QuizScreens/youranswers.dart';
import 'package:quizapp/constants/bottom_navigation_bar.dart';
import 'package:quizapp/constants/colors.dart';
import 'package:quizapp/constants/mycustombutton.dart';
import 'package:quizapp/constants/textstylehelper1.dart';

class QuestionScreen extends StatefulWidget {
  final QuestionData questionData;
  final List<QuestionData> questions;
  final VoidCallback onNext;

  const QuestionScreen({
    Key? key,
    required this.questionData,
    required this.questions,
    required this.onNext,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _QuestionScreenState createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  String selectedAnswer = "";

  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    Color boxColor = MyCustomColors().kPrimaryColor3;
    Color backgroundColor = MyCustomColors().kWhiteColor;
    var options = widget.questionData.options;

    bool isLastQuestion = widget.questions.indexOf(widget.questionData) ==
        widget.questions.length - 1;

    return Padding(
      padding: const EdgeInsets.only(left: 10, top: 10).r,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TextStyleHelper().mytext(
            "Question #${widget.questions.indexOf(widget.questionData) + 1}",
            20,
            FontWeight.w500,
            MyCustomColors().kBlackColor2,
          ),
          const SizedBox(
            height: 10,
          ),
          TextStyleHelper().mytext(
            widget.questionData.question,
            20,
            FontWeight.w500,
            MyCustomColors().kBlackColor,
          ),
          const SizedBox(
            height: 30,
          ),
          Wrap(
            children: List.generate(4, (index) {
              bool isCorrectAnswer =
                  options[index] == widget.questionData.correctAnswer;
              bool isAnswerSelected = selectedIndex == index;
              bool isSelectedWrong = isAnswerSelected && !isCorrectAnswer;

              return InkWell(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                    selectedAnswer = options[index];
                  });
                },
                child: AnswerBox(
                  correctAnswer: widget.questionData.correctAnswer,
                  options: options,
                  isCorrectAnswer: isCorrectAnswer,
                  answer: options[index],
                  color: isSelectedWrong || isCorrectAnswer
                      ? boxColor
                      : backgroundColor,
                  currentIndex: index,
                  selectedIndex: selectedIndex,
                  onClick: () {
                    setState(() {
                      
                      selectedIndex = index;
                      selectedAnswer = options[index];
                    });
                  },
                ),
              );
            }),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 10),
            child: RoundButton(
              text: isLastQuestion ? 'Finish' : 'Next',
              textColor: MyCustomColors().kWhiteColor,
              backgroundColor: MyCustomColors().kPrimaryColor,
              borderColor: MyCustomColors().kPrimaryColor,
              height: 57.h,
              width: 340.w,
              radius: 10.r,
              onClick: () {
                if (selectedAnswer.isNotEmpty) {
                  final isCorrect =
                      selectedAnswer == widget.questionData.correctAnswer;
                  widget.questionData.isAnswerCorrect = isCorrect;
                  // Update the selectedOption before moving to the next question
                  widget.questionData.selectedOption = selectedAnswer;

                  if (isLastQuestion) {
                    // Handle finishing the quiz
                    showModalBottomSheet(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25),
                              topRight: Radius.circular(25))),
                      context: context,
                      builder: (BuildContext context) {
                        return SizedBox(
                          height: 553.h, // Set the height you want
                          width: 428.w,
                          child: Padding(
                            padding: const EdgeInsets.all(20.0).r,
                            child: StatefulBuilder(
                              builder:
                                  (BuildContext context, StateSetter setState) {
                                return Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 159.04.w,
                                      height: 154.h,
                                      child: Image.asset(
                                          'assets/images/quizfinish.png'),
                                    ),
                                    SizedBox(
                                      height: 20.h,
                                    ),
                                    TextStyleHelper().mytext(
                                      'Quiz Finished',
                                      24.sp,
                                      FontWeight.w700,
                                      MyCustomColors().kBlackColor,
                                    ),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    TextStyleHelper().mytext(
                                      'Thanks for attempting quiz',
                                      16.sp,
                                      FontWeight.w700,
                                      MyCustomColors().kBlackColor,
                                    ),
                                    SizedBox(
                                      height: 20.h,
                                    ),
                                    RoundButton1(
                                      richTexts: [
                                        RichText(
                                          text: TextSpan(
                                            style: TextStyle(
                                              color: MyCustomColors()
                                                  .kWhiteColor, // Font color for the first text
                                              fontSize: 16,
                                            ),
                                            children: const [
                                              TextSpan(
                                                text: 'Print Quiz',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  fontFamily:
                                                      'Font1', // Font for the first text
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        RichText(
                                          text: TextSpan(
                                            style: TextStyle(
                                              color: MyCustomColors()
                                                  .kBlackColor4, // Font color for the second text
                                              fontSize: 16,
                                            ),
                                            children: const [
                                              TextSpan(
                                                text: '(only correct answers)',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  fontFamily:
                                                      'Font2', // Font for the second text
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                      backgroundColor:
                                          MyCustomColors().kPrimaryColor,
                                      borderColor:
                                          MyCustomColors().kPrimaryColor,
                                      height: 57.h,
                                      width: 388.w,
                                      radius: 10.r,
                                      onClick: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  YourAnswersScreen(
                                                questions: questions,
                                              ),
                                            ));
                                      },
                                    ),
                                    SizedBox(
                                      height: 15.h,
                                    ),
                                    RoundButton(
                                      text: 'View Explanations',
                                      textColor: MyCustomColors().kPrimaryColor,
                                      backgroundColor:
                                          MyCustomColors().kWhiteColor,
                                      borderColor:
                                          MyCustomColors().kPrimaryColor,
                                      height: 57.h,
                                      width: 388.w,
                                      radius: 10.r,
                                      onClick: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  const CheckingCorrectAnswers(),
                                            ));
                                      },
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        Navigator.pushAndRemoveUntil(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const CustomBottomNavigationBar(),
                                          ),
                                          (route) => false,
                                        );
                                      },
                                      child: Text(
                                        'Go back to homepage',
                                        style: TextStyle(
                                          color: MyCustomColors().kBlackColor1,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16.sp,
                                          decoration: TextDecoration.underline,
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              },
                            ),
                          ),
                        );
                      },
                    ); // Show the bottom sheet
                  } else {
                    widget.onNext();
                  }
                } else {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: TextStyleHelper().mytext(
                        "Select an Option",
                        18.sp,
                        FontWeight.normal,
                        MyCustomColors().kBlackColor,
                      ),
                      content: TextStyleHelper().mytext(
                        "Please select an answer before moving to the next question or finish.",
                        16.sp,
                        FontWeight.normal,
                        MyCustomColors().kBlackColor,
                      ),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: TextStyleHelper().mytext(
                            "OK",
                            18.sp,
                            FontWeight.normal,
                            MyCustomColors().kPrimaryColor,
                          ),
                        ),
                      ],
                    ),
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
